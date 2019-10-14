# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

# Examples

# What is your name? Bob
# Hello Bob.
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

print ">> What is your name? "
name = gets.chomp
  if name[-1] == "!"
    name[-1] = ""
    puts ">> HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts ">> Hello #{name}."
  end

# LS Solution (uses String#chop)
# print 'What is your name? '
# name = gets.chomp

# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

# Note that this solution uses both String#chomp and String#chop. These two
# methods are closely related, but slightly different: #chomp conditionally
# removes the tail end of a string (defaulting to a newline), while #chop
# removes the last character unconditionally. Both versions also have ! versions
# that modify the string directly; we could have used these here, but decided
# not to because the use of the ! in both the method name and the string might
# be mildly confusing.

# Further Exploration
# Try modifying our solution to use String#chomp! and String#chop!,
# respectively.

# print 'What is your name? '
# name = gets.chomp!

# if name[-1] == '!'
#   name.chop!
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
