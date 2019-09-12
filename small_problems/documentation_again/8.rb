# Included Modules (use documentation for Ruby 2.3.0)
# Ruby version 2.4.0 introduced an Array#min method not available in prior versions of Ruby; we wrote this exercise before that release. To follow along, please use the documentation for Ruby 2.3.0 here.
# Use irb to run the following code:

a = [5,9,3,11]
# puts a.min

# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

# This is an example of mix-in modules. They provide a way for classes of different types to share behaviors without using inheritance.

# A class can use a mix-in module by using the include method. Once included, all the mix-in's methods become available to objects of the class.

# One of the most commonly used mix-ins in ruby is the Enumerable module; it provides much of the functionality needed to iterate through collections such as Array, Hash, and Range. If you look on the left-hand side of the documentation for the Array class, you will see Enumerable listed under the heading of Included Modules. Click on Enumerable to view the Enumerable documentation.

# Enumerable#min was available before Array#min.
# Reference: https://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-min
# min → obj 
# min {| a,b | block } → obj
# min(n) → array
# min(n) {| a,b | block } → array
# Returns the object in enum with the minimum value. The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.



# Answer:
puts a.min(2)