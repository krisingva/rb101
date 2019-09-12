# Multiple Signatures
# What do each of these puts statements output?

a = %w(a b c d e)

# puts a.fetch(7)
# IndexError, out of bounds
# puts a.fetch(7, 'beats me')
# beats me
# puts a.fetch(7) { |index| index**2 }
# the block will be executed because an invalid index is referenced. Within the block, we are instructing a mathematical execution of 7 to the power of 2 which gives 49.

# References: 
# For %w: https://docs.ruby-lang.org/en/2.6.0/syntax/literals_rdoc.html
# a = %w(a b c d e) will give an array of strings or a = ["a", "b", "c", "d", "e"]
# For Array#fetch: https://docs.ruby-lang.org/en/2.6.0/Array.html#method-i-fetch
# fetch(index) -> obj
# tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value of return. Alternatively, if a block is given it will only be executed when an invalid index is referenced. Negative values of index count from the end of the array.