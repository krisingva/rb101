# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# each_with_object method:
array_ages = ages.each_with_object([]) do |(key, value), array|
  array << value
end

p array_ages.reduce(:+)

# each method:
sum = 0
ages.each do |key, value|
  sum += value
end

p sum

# Enumerable#inject method:
p ages.values.inject(:+)

# LS Discussion: This uses ages.values to make an array, then uses the inject
# method which is part of the Enumerable module. The strange-looking parameter
# to inject is simply a variety of the inject method which says "apply the +
# operator to the accumulator and object parameters of inject".

# As we have previously discussed, Enumerable is included in Array, and it can
# be useful to augment your knowledge of what you can do with arrays by studying
# Enumerable. When faced with a problem such as this one however, don't get
# tempted to go 'method hunting' in order to reach a solution. As demonstrated,
# even if you don't know the #inject method, the problem can be solved equally
# well by using #each to iterate through the Hash; you could even use a basic
# loop to reach the same result.

