# Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Enumerable#each_with_object and Array#min method:
# age_array = ages.each_with_object([]) do |(key, value), array|
#   array << value
# end
# p age_array.min

# Hash#values and Array#min method:
p ages.values.min