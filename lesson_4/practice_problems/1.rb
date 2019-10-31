# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Answer: Will return # => [1, 2, 3]. #select will determine the truthiness of
# the block, if the block return value is truthy, then the current item will be
# selected for the new collection returned from the method. Here, the last line
# in the code of the block is 'hi' which will return a truthy value, therefore,
# every element will be selected for the return collection.