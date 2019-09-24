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
MESSAGES = YAML.load_file('mortgage_messages_fixed.yml')

def valid_loan_amount?(num)
  num.to_i.to_s == num && num.to_i >= 100000 && num.to_i <= 10000000
end

def valid_apr?(num)
  (num.to_f.to_s == num || num.to_i.to_s == num) && num.to_f >= 0.1 &&
    num.to_f <= 99.9
end

def valid_loan_duration?(num)
  num.to_i.to_s == num && num.to_i >= 10 && num.to_i <= 30
end

def retrieve_loan_amount(loan)
  loop do
    puts MESSAGES['loan_amount']
    loan = gets.chomp

    if valid_loan_amount?(loan)
      loan = loan.to_i
      break
    else
      puts MESSAGES['invalid_number']
    end
  end
  loan
end

def retrieve_apr(apr)
  loop do
    puts MESSAGES['apr']
    apr = gets.chomp

    if valid_apr?(apr)
      apr = apr.to_f
      break
    else
      puts MESSAGES['invalid_number']
    end
  end
  apr
end

def retrieve_loan_duration(loan_in_years)
  loop do
    puts MESSAGES['loan_duration']
    loan_in_years = gets.chomp

    if valid_loan_duration?(loan_in_years)
      loan_in_years = loan_in_years.to_i
      break
    else
      puts MESSAGES['invalid_number']
    end
  end
  loan_in_years
end

def calculate_monthly_payment(loan, apr, loan_in_years)
  mpr = (apr / 100.00) / 12
  loan_in_months = loan_in_years * 12
  monthly_pay = loan * (mpr / (1 - (1 + mpr)**(-loan_in_months)))
  monthly_pay = monthly_pay.truncate(2)
  puts "> This is your monthly payment: $#{monthly_pay}"
end

def valid_new_calculation_answer?(answer)
  ['y', 'n'].include?(answer)
end

def new_calculation?(answer)
  answer == 'n'
end

def retrieve_new_calculation
  answer = ""
  loop do
    puts MESSAGES['another_calculation']
    answer = gets.chomp.downcase

    if valid_new_calculation_answer?(answer)
      break
    else
      puts MESSAGES['invalid_answer']
    end
  end
  answer
end

puts MESSAGES['welcome']

loop do # start of main loop
  loan = ''
  loan = retrieve_loan_amount(loan)

  apr = ''
  apr = retrieve_apr(apr)

  loan_in_years = ''
  loan_in_years = retrieve_loan_duration(loan_in_years)

  calculate_monthly_payment(loan, apr, loan_in_years)

  answer = retrieve_new_calculation

  break if new_calculation?(answer)
end # end of main loop

puts MESSAGES['exit_message']

# Finally, don't forget to run your code through Rubocop.
