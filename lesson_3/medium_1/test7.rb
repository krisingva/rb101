hash = {
  "Marilyn" => { "age" => 23, "gender" => "female"},
  "Bob" => { "age" => 44, "gender" => "male"}
}

def mess_with_demographics(demo_hash)
  p demo_hash
  demo_hash.values.each do |family_member|
    family_member["age"] += 50
    family_member["gender"] = "other"
    p demo_hash
  end
end

mess_with_demographics(hash)
p hash