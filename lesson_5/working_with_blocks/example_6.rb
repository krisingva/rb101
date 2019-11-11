# Let's mix it up now with some variation. In the below example, we have an
# array of hashes, and we want to select all elements where every key matches
# the first letter of the value. Note that the keys are symbols here, so we'll
# have to do some conversion before comparison.

  [{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
    hash.all? do |key, value|
      value[0] == key.to_s
    end
  end
  # => [{ :c => "cat" }]

# There's a lot going on here, but you now possess all the necessary knowledge
# to take this apart, line by line, letter by letter. We won't do a full table
# of steps like before, but see if you understand every line and every letter
# in the code above. If you do not, take your time and study it; you should be
# able to deconstruct this code to its core.

# object: an array containing elements that are hashes
# select method call on the array will iterate over the elements (hashes) and
# each hash is passed to the block. The truthiness of the return value of the
# outer block will determine whether the current element of the iteration will
# be included in the new returned collection. The returned collection will be an
# array because the original collection was an array.
# all? method call on a hash will look at each key-value pair within the hash.
# This method will return true or false depending on the return of the inner
# block. The return of the inner block will be true if the first indexed element
# of value equals the corresponding key after conversion of the key symbol to
# string. If the block returns true for every key-value pair in hash, the all?
# method will return true, otherwise false. The return value of the all? method
# is in turn used to determine the return of the outer block which in turn is
# used to determine the return of the select method.

# LS:
# The first thing to notice here is the use of the all? method within the select
# block. Since #select specifically cares about the truthiness of the block's
# return value, using a method that returns a boolean works well. all? will
# return true if the block passed to it never returns a value of false or nil
# for every key/value pair in the hash. We're using value[0] == key.to_s to test
# whether all keys match the first letter of all their associated values. Note
# that the only hash that meets this criteria is {:c => 'cat'}, and the return
# value is an array.

# What would happen if, instead of using all?, we used any?. Why would this
# affect the return value of select?

# Would return:
# => [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]
