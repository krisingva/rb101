# Tip calculator
# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the tip
# and the total amount of the bill.

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of the more usual
# $30.00 and $230.00. Modify your solution so it always prints the results with
# 2 decimal places.

# Hint: You will likely need Kernel#format for this.

print ">> How much is the bill? "
bill_amount = gets.to_f
print ">> What percentage tip would you like to give? "
tip_percentage = gets.to_f
tip_amount = bill_amount * (tip_percentage / 100)
total_amount = bill_amount + tip_amount
puts ">> The tip is $#{format("%.2f", tip_amount)}"
puts ">> The total is $#{format("%.2f", total_amount)}"




