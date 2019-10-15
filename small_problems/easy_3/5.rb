# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).

# Example:

# square(5) == 25
# square(-8) == 64

def multiply(number_one, number_two)
  number_one * number_two
end

def square(number)
  multiply(number, number)
end

p square(5) == 25
p square(-8) == 64

# Discussion Our implementation relies on the previous exercise's multiply
# method. The return value of multiply is the result of multiplying the two
# arguments we pass to it, so we can simply pass in the same number twice, which
# will return the squared value. Our square method is implicitly returning the
# return value from multiply(n, n).

# Further Exploration What if we wanted to generalize this method to a "power to
# the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go
# about doing so while still using the multiply method?

# def power(number, nth)
#   repition = nth/2
#   if nth.even?
#     multiply(number, number) ** repition
#   else
#     (multiply(number, number) ** repition) * number
#   end
# end

# another student's code:
# def power(number, nth)
#   total = 1
#   nth.times { |_| total = multiply(number, total) }
#   total
# end


# p power(5, 5)
# p power(3, 3)
# p power(7, 4)