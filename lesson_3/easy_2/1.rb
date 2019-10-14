# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

# Bonus: What are two other hash methods that would work just as well for this solution?

p ages.has_key?("Spot")
p ages.include?("Spot")
p ages.assoc("Spot") != nil
p ages.select!{ |k,v| k = "Spot"} != nil

# will all evaluate to false

# LS answer:
# ages.key?("Spot")
# Bonus Answer:

# Hash#include? and Hash#member?