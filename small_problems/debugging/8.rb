# Password
# The following code prompts the user to set their own password if they haven't
# done so already, and then prompts them to login with that password. However,
# the program throws an error. What is the problem and how can you fix it?

# Once you get the program to run without error, does it behave as expected?
# Verify that you are able to log in with your new password.

# password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   #password = set_password
#   set_password
# end

# verify_password

# The problem is that the password set in the method defintion of `set_password`
# is a local variable to the method and not visible outside the method.
# Therefore, the outer local variable password is never reset, it stays `nil`.
# To fix this, you have to assign the outer local variable password to the
# return value of the method invokation of set_password and inside that method,
# have password as the last line evaluted. Then remove the if else statement outside of the verify_password method.

#Fixed:

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
end

if !password
  password = set_password
end

input = verify_password

if input == password
  puts 'Welcome to the inside!'
else
  puts 'Authentication failed.'
end