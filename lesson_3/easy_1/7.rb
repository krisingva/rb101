# Fun with gsub:

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep
# This gives us a string that looks like a "recursive" method call:
"add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this
# string as if it were a "recursive" method call

eval(how_deep)
# what will be the result?

# My answer: in the first iteration of the method call, the argument will be 2:
# add_eight(add_eight(add_eight(add_eight(add_eight(2))))) and the return of the
# method will be 10, which will be the argument for the next iteration of the
# method call: add_eight(add_eight(add_eight(add_eight(10)))) and the return of
# the method will be 18, which will be the argument for the next iteration of
# the method call: add_eight(add_eight(add_eight(18))) and so on so the final
# result will be 42

# LS: Note: The Kernel#eval method is a rarely used Ruby method. You're not
# expected to understand how it works at this stage.