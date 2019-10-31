# Recall earlier we wrote a select_fruit method that selected fruits out of the
# produce_list hash of fruits and vegetables. Suppose we wish to now write a
# more generic general_select method so that we can specify whether we're
# interested in selecting fruits or vegetables. Here's how we could build such a
# method:

def general_select(produce_list, selection_criteria)
  produce_keys = produce_list.keys
  counter = 0
  selected_produce = {}

  loop do
    break if counter == produce_keys.size
    # this has to be at the top in case produce_list is empty hash

    current_key = produce_keys[counter]
    current_value = produce_list[current_key]

    if current_value == selection_criteria
    # used to be current_value == 'Fruit'
      selected_produce[current_key] = current_value
    end

    counter += 1
  end

  selected_produce
end

# To use the above general_select method, we have to pass in a collection and
# some selection criteria. In this specific case, the criteria is hardcoded to
# match with a value: if there's a match between the criteria and value, then
# the current key-value pair is selected into the selected_produce hash. Here's
# how we can use this method:

  produce = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
  }

  p general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
  p general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
  p general_select(produce, 'Meat')      # => {}

  # Note that we chose to not name the method select because of collision with
  # Kernel#select, which does something completely different than what we're
  # talking about here with collections.