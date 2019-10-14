# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.

# Will print out:
# Alice
# Bob
# Correct!

# What does this print out? Can you explain these results?
# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# Will print out:
# BOB
# BOB
# We are mutating the object that both variables point to by using the String#upcase! method
