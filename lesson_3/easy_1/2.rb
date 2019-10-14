# Describe the difference between ! and ? in Ruby. And explain what would happen
# in the following scenarios:

# what is != and where should you use it? put ! before something, like
# !user_name put ! after something, like words.uniq! put ? before something put
# ? after something put !! before something, like !!user_name

# ! at the end of a method name (part of the name) usually refers to the method
# being mutating. If put in front of an operand such as =, it means NOT? at the
# end of a method name (part of the name) usually refers to the method probing
# whether something is true or certain conditions are met, it is also used in
# ternary operators where something is evaluate to true or false, followed by :
# and expressions that should be evaluated in either case.

# 1. what is != and where should you use it? != means is not equal to, as
#    opposed to == should use != when you want a certain action if a variable
#    does not point to a certain value
# 2. put ! before something, like !user_name !something means that it evaluates
#    to false for every object except false and nil (LS: turns any object into
#    the opposite of their boolean equivalent)
# 3. put ! after something, like words.uniq! usually means that the method will
#    mutate the caller
# 4. put ? before something? before something will return the string
#    representation of that something (has to be a character)
# 5. put ? after something? after a method name usually refers to the method
#    probing whether something is true or certain conditions are met (LS: ? : is
#    the ternary operator for if...else)
# 6. put !! before something, like !!user_name means that !!something will
#    evaluate to true for every object except false and nil (LS: turns any
#    object into their boolean equivalent)