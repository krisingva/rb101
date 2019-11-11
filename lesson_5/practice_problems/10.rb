# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  hash.each do |k, v|
    hash[k] = v + 1
  end
end

p new_arr

# LS:
# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |hsh|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end
# # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# Here map is iterating through the array. On each iteration it is creating a
# new hash (incremented_hash) and then iterating through the hsh object for that
# iteration in order to add key-value pairs to this hash using the original keys
# but values incremented by 1. The outer block then returns this
# incremented_hash to map which uses it to transform each element in the array.

# When approaching problems like this there is often more than one way to solve
# them. Here is a solution to the same problem using each_with_object instead of
# map.

# [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |hsh, arr|
#   incremented_hash = {}
#   hsh.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   arr << incremented_hash
# end
# # => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}]

# Sometimes a particular method will be more suited than another. Here map is
# probably more suitable since we know it will return a new array in any case.
# When deciding which method to use it is important to clearly understand the
# method implementation, what arguments and blocks can be passed to it and its
# return value.

