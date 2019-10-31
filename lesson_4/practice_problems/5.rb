# What does shift do in the following code? How can we find out?

  hash = { a: 'ant', b: 'bear' }
  hash.shift

# Answer: # => [:a, "ant"]
# Look up the documentation for Hash#shift:
# shift → anArray or obj
# Removes a key-value pair from hsh and returns it as the two-item array [ key,
# value ], or the hash's default value if the hash is empty.
