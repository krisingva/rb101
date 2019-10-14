# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i
# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_i
# area_meter = length * width
# area_feet = area_meter * 10.7639
# puts "The area of the room is #{area_meter} square meters (#{area_feet} square feet)."

# LS solution:
# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."

# Further Exploration
# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

SQ_FEET_TO_INCHES = 144.00
SQ_FEET_TO_CM = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f
area_feet = length * width
area_inches = area_feet * SQ_FEET_TO_INCHES
area_cm = area_feet * SQ_FEET_TO_CM
puts "The area of the room is #{area_feet} square feet " + \
     "(#{area_inches} square inches or " + \
     "#{area_cm} square centimeters)."