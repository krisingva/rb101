# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator
# You'll need three pieces of information:
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:
# monthly interest rate
# loan duration in months

def valid_integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_float?(num)
  num.to_f.to_s == num && num.to_f > 0
end

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

apr = ''
loop do
  puts "> Please insert Annual Percentage Rate in %:"
  apr = gets.chomp

  if valid_integer?(apr)
    apr = apr.to_i
    break
  elsif valid_float?(apr)
    apr = apr.to_f
    break
  else
    puts "> This is an invalid number."
  end
end

# monthly percentage rate formula : APR / 12
mpr = (apr / 100.00) / 12

loan_in_years = ''
loop do
  puts "> Please enter loan duration in years:"
  loan_in_years = gets.chomp

  if valid_integer?(loan_in_years)
    loan_in_years = loan_in_years.to_i
    break
  elsif valid_float?(loan_in_years)
    loan_in_years = loan_in_years.to_f
    break
  else
    puts "> This is an invalid number."
  end
end

# loan in years converted to loan in months
loan_in_months = loan_in_years * 12

p loan
p mpr
p loan_in_months

# You can use the following Mortgage Calculator Formula:
monthly_pay = loan * (mpr / (1 - (1 + mpr)**(-loan_in_months)))
monthly_pay = monthly_pay.truncate(2)
puts "> This is your monthly payment: $#{monthly_pay}"

# Finally, don't forget to run your code through Rubocop.
