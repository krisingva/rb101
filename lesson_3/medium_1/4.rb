# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# Answer:
# The first method receives buffer as an argument and modifies it within the method. The advantage of this method is that the buffer variable was initialized in outer scope and therefore available outside the method.
# The second method creates the variable buffer inside the method and reassigns it there with every new element that is added. The disadvantage of this method is that the buffer variable is limited to the inner scope of the method and is not available in the outer scope.
# A flaw with both methods: Each new element is added at the end of the growing array, however if the array overshoots the max size, the first element is removed with the shift method, not the last one.