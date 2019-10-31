# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior). Your solution should produce the
# hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a
# senior is aged 65+.

# My notes:
# A hash consisting of keys that are strings and values that are hashes,
# containing string keys and integer values.
# hash[key] = (nested_hash[key] = value) = value
# determine if the value for the nested_hash key "age" is within
# a) 0-17
# then add age_group key with a value "kid"
# b) 18-64
# then add age_group key with a value "adult"
# c) 65 and over
# then add age_group key with a value "senior"

munsters.map do |key, value|
  if value["age"] >= 0 && value["age"] <= 17
    value["agegroup"] = "kid"
  elsif value["age"] > 17 && value["age"] <= 64
    value["agegroup"] = "adult"
  else value["age"] > 64
    value["agegroup"] = "senior"
  end
end

p munsters

