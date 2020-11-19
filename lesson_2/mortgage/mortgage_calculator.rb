# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator
# You'll need three pieces of information:
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:
# monthly interest rate
# loan duration in months

require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def valid_integer?(num)
  num.to_i.to_s == num && num.to_i > 0
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num && num.to_f > 0.0
end

puts MESSAGES['welcome']

loop do # start of main loop
  loan = ''
  loop do
    puts MESSAGES['loan_amount']
    loan = gets.chomp

    if valid_number?(loan)
      loan = loan.to_f
      break
    else
      puts MESSAGES['invalid_number']
    end
  end

  apr = ''
  loop do
    puts MESSAGES['apr']
    apr = gets.chomp

    if valid_number?(apr)
      apr = apr.to_f
      break
    else
      puts MESSAGES['invalid_number']
    end
  end

  # monthly percentage rate formula : APR / 12
  mpr = (apr / 100.00) / 12

  loan_in_years = ''
  loop do
    puts MESSAGES['loan_duration']
    loan_in_years = gets.chomp

    if valid_integer?(loan_in_years)
      loan_in_years = loan_in_years.to_i
      break
    else
      puts MESSAGES['integers_only']
    end
  end

  # loan in years converted to loan in months
  loan_in_months = loan_in_years * 12

  # You can use the following Mortgage Calculator Formula:
  monthly_pay = loan * (mpr / (1 - (1 + mpr)**(-loan_in_months)))
  monthly_pay = monthly_pay.truncate(2)
  puts "> This is your monthly payment: $#{monthly_pay}"

  puts MESSAGES['another_calculation']
  answer = gets.chomp

  break if answer.downcase.start_with?("n")
end # end of main loop

puts MESSAGES['exit_message']

# Finally, don't forget to run your code through Rubocop.
