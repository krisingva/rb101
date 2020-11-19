# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator

def valid_integer?(num)
  num.to_i.to_s == num && num.to_i >= 0
end

def valid_float?(num)
  num.to_f.to_s == num && num.to_f >= 0
end

# You'll need three pieces of information:

# the loan amount
loan = ''
loop do
  puts "> Please insert loan amount in USD:"
  loan = gets.chomp

  if valid_integer?(loan)
    loan = loan.to_i
    break
  elsif valid_float?(loan)
    loan = loan.to_f
    break
  else
    puts "> This is an invalid number."
  end
end

# the Annual Percentage Rate (APR)
# puts "> Please insert Annual Percentage Rate in %:"
# apr = gets.chomp.to_f / 100.00
# # monthly percentage rate formula : APR / 12
# mpr = apr / 12
loan = ''
loop do
  puts "> Please insert Annual Percentage Rate in %:"
  apr = gets.chomp

  if valid_integer?(loan)
    loan = loan.to_i
    break
  elsif valid_float?(loan)
    loan = loan.to_f
    break
  else
    puts "> This is an invalid number."
  end
end
# # the loan duration
# puts "> Please enter loan duration in years:"
# loan_in_years = gets.chomp
# loan_in_months = loan_in_years.to_i * 12

# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months

# You can use the following Mortgage Calculator Formula:
# monthly_pay = loan * (mpr / (1 - (1 + mpr)**(-loan_in_months)))
# monthly_pay = monthly_pay.truncate(2)
# puts "> This is your monthly payment: $#{monthly_pay}"
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# Finally, don't forget to run your code through Rubocop.
