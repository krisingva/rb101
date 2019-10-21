def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  # assigns object ids (outside times block) to variable outer_id

  # 85
  # 70097129557400
  # 70097129557380
  # 85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block."

  # "a_outer is 42 with an id of: 85 before the block."
  # "b_outer is "forty two" with an id of: 70097129557400 before the block."
  # is acturally:
  # b_outer is forty two with an id of: 70252244693100 before the block.
  # "c_outer is [42] with an id of: 70097129557380 before the block."
  # "d_outer is 42 with an id of: 85 before the block."

  puts

  1.times do
    a_outer_inner_id = a_outer.object_id
    b_outer_inner_id = b_outer.object_id
    c_outer_inner_id = c_outer.object_id
    d_outer_inner_id = d_outer.object_id

    # initializes x_outer_inner_id variables and assigns object ids of the
    # x_outer pointing objects that were initialized outside the times block to
    # the newly initialized variables x_outer_inner_id.
    # x_outer_id and x_outer_inner_id are aliases pointing to the same objects,
    # either from outside the block (x_outer_id) or within the block
    # (x_outer_inner_id)

    puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
    puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
    puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
    puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."

    # I would say the ids are the same because the variables are not passed into
    # the method, the method has access to them from the outside scope. Even if
    # they were passed into the method, it would be passed in by reference
    # rather than by value so the object id would be the same.

    # Correct, same object ids!
    puts

    a_outer = 22
    b_outer = "thirty three"
    c_outer = [44]
    d_outer = c_outer[0]

    # reassigning the x_outer variables to different objects, now they should
    # have different object ids associated with them.

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
    puts

    # Correct, they have different object ids!

    a_inner = a_outer # => 22
    b_inner = b_outer # => "thirty three"
    c_inner = c_outer # => [44]
    d_inner = c_inner[0] # => 44

    # new variables initialized inside the block and are aliases to the
    # variables that were reassigned inside the block (which should have new
    # object ids)

    a_inner_id = a_inner.object_id
    b_inner_id = b_inner.object_id
    c_inner_id = c_inner.object_id
    d_inner_id = d_inner.object_id
    # point to same object ids as x_outer variables (which have the new object
    # ids)

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
    puts
  end

  # Correct, both have the new object ids!

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"

  # My answer was that because we are outside the times block, the variables on
  # the inside of the block are not available outside the block. For example,
  # a_outer will refer to the outer variable that points to 42 with an outer_id
  # pointing to 85 and a_puter.object_id also pointing to 85
  # => Incorrect!
  # x_outer was not initialized inside the block, rather reassigned there to a
  # new value. This reassignment carries through to outside the block. For
  # example, a_outer will refer to the outer variable that points to 22 with an
  # a_outer_id pointing to 85 (this variable was never reassigned) and
  # a_outer.object_id pointing to 45
  # However, x_inner was initialized inside the block and is therefore not
  # available outside the block, leading to an error message: "ugh ohhhhh"
end

fun_with_ids

# Outputs: a_outer is 42 with an id of: 85 before the block. b_outer is forty
# two with an id of: 70104935949100 before the block. c_outer is [42] with an id
# of: 70104935949080 before the block. d_outer is 42 with an id of: 85 before
# the block.

# a_outer id was 85 before the block and is: 85 inside the block. b_outer id was
# 70104935949100 before the block and is: 70104935949100 inside the block.
# c_outer id was 70104935949080 before the block and is: 70104935949080 inside
# the block. d_outer id was 85 before the block and is: 85 inside the block.

# a_outer inside after reassignment is 22 with an id of: 85 before and: 45
# after. b_outer inside after reassignment is thirty three with an id of:
# 70104935949100 before and: 70104935952520 after. c_outer inside after
# reassignment is [44] with an id of: 70104935949080 before and: 70104935952640
# after. d_outer inside after reassignment is 44 with an id of: 85 before and:
# 89 after.

# a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
# b_inner is thirty three with an id of: 70104935952520 inside the block
# (compared to 70104935952520 for outer). c_inner is [44] with an id of:
# 70104935952640 inside the block (compared to 70104935952640 for outer).
# d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).

# a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block. b_outer is
# thirty three with an id of: 70104935949100 BEFORE and: 70104935952520 AFTER
# the block. c_outer is [44] with an id of: 70104935949080 BEFORE and:
# 70104935952640 AFTER the block. d_outer is 44 with an id of: 85 BEFORE and: 89
# AFTER the block.

# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh

