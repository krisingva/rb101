# Alan wrote the following method, which was intended to show all of the factors
# of the input number:

# def factors(number) divisor = number factors = [] begin factors << number /
#   divisor if number % divisor == 0 divisor -= 1 end until divisor == 0 factors
#   end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using
# begin/end/until? Note that we're not looking to find the factors for 0 or
# negative numbers, but we just want to handle it gracefully instead of raising
# an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

number = 15
p factors(number)

# Bonus 1 What is the purpose of the number % divisor == 0 ? Tells you there is
# no remainder when number is divided by divisor, making it a valid factor.

# Bonus 2 What is the purpose of the second-to-last line (line 8) in the method
# (the factors before the method's end)? Returns the value of factor so that the
# array can be stored in a variable when the method is called or the array can
# be easily printed out when the method is called.