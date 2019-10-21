# Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Whether the above "coincidentally" does what we think we wanted "depends" upon
# what is going on inside the method.

# How can we refactor this practice problem to make the result easier to predict
# and easier for the next programmer to maintain?

# My answer: change a_string_param += "rutabaga" to a_string_param << "rutabaga"
# Will output:
# My string looks like this now: pumpkinsrutabaga
# My array looks like this now: ["pumpkins", "rutabaga"]

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]

#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Every language (Ruby included) provides ways and means of writing "clever" code that depends on some of the less obvious traits of the language.

# Every good programmer practices these tricks...and then avoids them like the plague.

# Clever programmers don't write "clever" code. They write explicit code that is easy to read, debug and modify as the requirements change.

# Further explanation by Pete Hanson in Forum:
# Q: I'm in the same boat as Kevin. I was also wondering if using methods that
# mutate the caller in your programs is a bad practice. Should you always return
# something from your methods and reassign the returned values to your original
# variables as opposed to using destructive methods?
# P.H.: We do show this behavior -- multiple assignment -- earlier in the
# curriculum. For instance, there's an example in this assignment. What is
# different here is that the code in this problem doesn't use brackets when
# returning the two values:

#   return a_string_param, an_array_param
# must be an explicit return without brackets

#   An alternative way to write that same code is:

#   [a_string_param, an_array_param]    # implicit return is okay here

#   All the assignment does is assign the first element of the returned array to
#   the first variable, and the second element to the second variable.

#   We don't put a lot of emphasis on this syntax, but you should be able to
#   recognize it and understand what it means when you see it. The main point of
#   the question is that mutating arguments can lead to code that is somewhat
#   hard to understand and maintain.

#   Regarding mutating the caller (I'm going to return to the term "caller"
#   below), it's generally not good practice. It's difficult to see, just by
#   looking at the method call, whether one of your arguments will be mutated,
#   and, if so, which one will be mutated. For instance:

#   a = [1, 2, 3]
#   b = [4, 5, 6]
#   foo!(a, b)

#   We have a method with the ! suffix, which is a strong hint that we're going
#   to mutate something. However, which argument are we going to mutate? Or,
#   maybe we're going to mutate both? There's no way to tell just by looking at
#   that code, so it's bad practice in most cases.

#   That said, at this stage of learning Ruby, you're probably going to want to
#   mutate the arguments in some of your methods. Don't stress about it. If, at
#   first, you can't figure out an easy way to avoid mutating the arguments, go
#   ahead and do so if you have to. When you get to RB120, though, you probably
#   won't want to do that any more. That's when we'll make the distinction
#   between mutating the caller and mutating the arguments. For completeness,
#   though, I'll mention it here.

#   We use the term "caller" somewhat loosely at this point when we refer to
#   mutating the caller. In reality, what we're doing above is mutating the
#   argument (or arguments), not the caller. Mutating the caller occurs when you
#   use an object (like a string) to invoke a method and that method mutates
#   that object:

#   s = "hello, world"
#   s.upcase!
#   s          # "HELLO, WORLD"

#   Here, we're mutating the string referenced by s, and s is the caller on line
#   2. Generally, this isn't considered bad practice. Even if we were passing
#   several arguments to the method in question, it's generally understood that
#   ! means we're mutating the caller. You can reasonably assume that most
#   methods called like this won't mutate the arguments, nor should your methods
#   do so.

#   I hope this helps.
