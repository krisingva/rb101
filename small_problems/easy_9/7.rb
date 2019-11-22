# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

def swap_name(str)
  str.split.reverse.join(', ')
end

# LS:
# Solution
# def swap_name(name)
#   name.split(' ').reverse.join(', ')
# end

# Discussion
# The method is given a full name as a string. Since we know the name is divided
# by a space we can use String#split with an argument of (' '). This gives us an
# array ['Joe', 'Roberts'].

# We then use Array#reverse to give us ['Roberts', 'Joe'] and, finally, we use
# Array#join with the comma and the space (', ') giving us the desired result.

# Examples

p swap_name('Joe Roberts') == 'Roberts, Joe'