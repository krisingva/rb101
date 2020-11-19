# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# loan_amount : $150,000.00
loan_amount = 230000
# the Annual Percentage Rate (APR)
# APR = 4%
apr = 0.040000000000
# monthly percentage rate formula : APR / 12
mpr = apr / 12
# the loan duration
# loan_duration = 30 years
loan_duration_years = 30
loan_duration_months = loan_duration_years * 12

# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# You can use the following Mortgage Calculator Formula:
puts monthly_payment = loan_amount * (mpr / (1 - (1 + mpr)**(-loan_duration_months)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# Finally, don't forget to run your code through Rubocop.