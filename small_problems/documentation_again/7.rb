# Parent Class
# Use irb to run the following code:
s = 'abc'
# puts s.public_methods.inspect

# Reference: https://docs.ruby-lang.org/en/2.6.0/Object.html#method-i-public_method 
# public_methods(all=true) → array
# Returns the list of public methods accessible to obj. If the all parameter is set to false, only those methods in the receiver will be listed, this means just the methods defined directly in the class and none of the methods from the parent classes. Note: a class can override the members of its superclass. In fact, most of the Core and Standard Library API classes do just that. What this means for you is that you must first look at the documentation for your class before looking at the documentation for the superclass. Even if you know that the superclass has a particular method, you should always check that it isn't being overridden by the subclass.

# Answer:
puts s.public_methods(false).inspect