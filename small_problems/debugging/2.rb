# HEY YOU!
# String#upcase! is a destructive method, so why does this code print `HEY you`
# instead of `HEY YOU`? Modify the code so that it produces the expected output.

def shout_out_to(name)
  puts name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# When shout_out_to method is invoked with the string 'you' passed in as an
# argument, the method parameter is bound to the string and the methods #chars
# (produces an array of characters from the string ["y", "o", "u"] but with new
# string objects) and #each are called on it. The code inside the block mutates
# each character of the array so that it becomes: ["Y", "O", "U"] (does not
# affect the string object name). This return however is not saved, therefore,
# when puts is called on name on line 8, name still represents the string 'you'.
# To modify name, assign name to the returned array, finally use #join to create
# a string from array characters.

# def shout_out_to(name)
#   name = name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name.join
# end

# shout_out_to('you') # expected: 'HEY YOU'

# LS solution:
# def shout_out_to(name)
#   name.upcase!    # mutate the string directly

#   puts 'HEY ' + name
# end

# shout_out_to('you')
