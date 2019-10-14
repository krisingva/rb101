# One day Spot was playing with the Munster family's home computer and he wrote
# a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end
# After writing this method, he typed the following...and before Grandpa could
# stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)
p munsters
# Did the family's data get ransacked? Why or why not?

# My answer: No, the munsters hash will be used as an argument for the
# mess_with_demographics method but inside that method, the each method is
# called on the values. The each method will call the block to change the values
# but then return the original hash.

# LS answer: Spot will find himself in the "dog" house for this one. The
# family's data is all in shambles now.

# Why? Remember that in Ruby, what gets passed in the parameter list is not what
# it appears. Under the hood, Ruby passes the object id of each item rather than
# the value of the parameter. The method internally stores these object id's in
# locally scoped (private to the method) variables (named per the method
# definition's parameter list).

# So Spot's demo_hash starts off pointing to the munsters hash. His program
# could wind up replacing that with some other object id and then the family's
# data would be safe.

# In this case, the program does not reassign demo_hash -- it just uses it
# as-is. So the actual hash object that is being messed with inside of the
# method IS the munsters hash.

# Additional information on answer: The object ids of the hash values change,
# there is reassignment of those. The object id of the hash itself does not
# change, the hash is mutated by the reassignment of the values.

# The return from calling the mess_with_demographics method with the munsters
# hash as an argument is an array of all the reassigned nested hashes: =>
# [{"age"=>74, "gender"=>"other"}, {"age"=>72, "gender"=>"other"}, {"age"=>444,
# "gender"=>"other"}, {"age"=>52, "gender"=>"other"}, {"age"=>65,
# "gender"=>"other"}]

# Within the main method we are calling the Hash#value method: values → array
# Returns a new array populated with the values from hsh. Then the each method
# is called on this array each {|item| block} → ary Calls the given block once
# for each element in self, passing that element as a parameter. Returns the
# array itself. Why isn't this leading to the original hash being returned from
# the mess_with_demographics method?
