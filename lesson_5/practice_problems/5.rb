# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

# (5..10).inject { |sum, n| sum + n }

# step-wise:
# selecting keys with "male" in value:
# new_hash = munsters.select do |k, v|
#   munsters[k]["gender"] == "male"
# end
# ages = []
# iterating through hash with selected keys, adding value of "age" to an array:
# new_hash.each do |k,v|
#   ages << new_hash[k]["age"]
# end
# summing ages:
# p ages.inject { |sum, num| sum + num }

# condensed:
ages = []
# iterate through hash, if key has "male" in value, add "age" value to an array:
munsters.each do |k,v|
  if munsters[k]["gender"] == "male"
    ages << munsters[k]["age"]
  end
end
p ages.inject { |sum, num| sum + num }
# => 444

# LS (uses Hash#each_value):

# total_male_age = 0
# munsters.each_value do |details|
#   total_male_age += details["age"] if details["gender"] == "male"
# end

# total_male_age # => 444
# In this example, within each key-value pair in the outer hash the value is
# itself a hash. When iterating through the outer hash, we need to access two
# values from each inner hash.

# Since we're not referencing the key (each family member's name) from the
# key-value pairs in the outer hash, we can use Hash#each_value with a single
# block parameter.