# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator

# You'll need three pieces of information:

# the loan amount
puts "> Please insert loan amount in USD:"
loan_amount = gets.chomp.to_i
# the Annual Percentage Rate (APR)
puts "> Please insert Annual Percentage Rate in %:"
apr = gets.chomp.to_f / 100.00
# monthly percentage rate formula : APR / 12
mpr = apr / 12
# the loan duration
puts "> Please enter loan duration in years:"
loan_in_years = gets.chomp
loan_in_months = loan_in_years.to_i * 12

# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# You can use the following Mortgage Calculator Formula:
monthly_pay = loan_amount * (mpr / (1 - (1 + mpr)**(-loan_in_months)))
monthly_pay = monthly_pay.truncate(2)
puts "> This is your monthly payment: $#{monthly_pay}"
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# Finally, don't forget to run your code through Rubocop.
