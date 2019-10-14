# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number

p barney = flintstones.to_a.fetch(2)

# LS answer:
# flintstones.assoc("Barney")
# => ["Barney", 2]