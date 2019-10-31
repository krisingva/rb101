# In this example we want to select the key-value pairs where the value is
# 'Fruit'.

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

# def select_fruit(hsh)
#   hsh.select { |k, v| v == 'Fruit'}
# end

# by looping:
def select_fruit(hsh)
  arr = hsh.keys
  # creates arr = ['apple', 'carrot', 'pear', 'broccoli']
  new_hash = {}
  counter = 0
  loop do
    if hsh[arr[counter]] == 'Fruit'
      new_hash[arr[counter]] = 'Fruit'
    end
    counter += 1
    break if counter == arr.size
  end
  new_hash
end

# LS Solution (similar, but moves break statement and creates a variable for the
# current hash value):
# def select_fruit(produce_list)
#   produce_keys = produce_list.keys
#   counter = 0
#   selected_fruits = {}

#   loop do
#     break if counter == produce_keys.size
#     # this has to be at the top in case produce_list is empty hash

#     current_key = produce_keys[counter]
#     current_value = produce_list[current_key]

#     if current_value == 'Fruit'
#       selected_fruits[current_key] = current_value
#     end

#     counter += 1
#   end

#   selected_fruits
# end

p select_fruit(produce)




