# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# Answer: # => { "a" => "ant", "b" => "bear", "c" => "cat" }. The method returns
# the collection object that was passed in as method argument, in this case a
# hash. The first argument for the block is each element in the calling array,
# the second argument for the block is the collection object. For each item in
# the array that the method is called on, the hash key will be the first
# character of that string and the value becomes the string, as in hash
# assignment: hash[key] = value