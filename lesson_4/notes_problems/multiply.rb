# Continuing on with the idea of building generic methods, let's update our
# double_numbers method to not only be able to double the values in an array,
# but to multiply by any number. For example, let's create a method called
# multiply that can take an additional argument to determine the transformation
# criteria.

def multiply(numbers, factor)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    multiplied_numbers << numbers[counter] * factor
    counter += 1
  end

  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

# Note that the original argument is not mutated and that we're returning a new
# array here.