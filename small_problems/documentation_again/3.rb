# Default Arguments in the Middle
# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Use the ruby documentation to determine what this code will print
# My answer:
# Information gathered from:
# https://ruby-doc.org/docs/ruby-doc-bundle/ProgrammingRuby/book/tut_methods.html
# Default arguments are only used if no arguments are given when the method is
# called. In this case there are three arguments given by calling the method so
# the two default arguments are not used. Should give [4, 5, 6]
# Actual answer:
# [4, 5, 3, 6]
# Should have used:
# https://ruby-doc.org/core-2.6.4/doc/syntax/calling_methods_rdoc.html by going
# to http://ruby-doc.org/ and selecting the doc/syntax/calling_methods.rdoc link
# from the core API page, then scroll down to default positional arguments.
# "When the method defines default arguments you do not need to supply all the
# arguments to the method. Ruby will fill in the missing arguments in-order."