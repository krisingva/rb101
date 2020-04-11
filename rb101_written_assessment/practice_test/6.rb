# Try answering these three questions without running the code:

a = 'name'
b = 'name'
c = 'name'

# Are these three local variables pointing to the same object?

puts a.object_id
puts b.object_id
puts c.object_id

# And when we add these two lines of code... ?

a = c
b = a

puts a.object_id
puts b.object_id
puts c.object_id

# What about when we add these three lines of code?
a = 5
b = 5
c = 5

puts a.object_id
puts b.object_id
puts c.object_id


