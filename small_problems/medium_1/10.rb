# Fibonacci Numbers (Last Digit)
# In the previous exercise, we developed a procedural method for computing the
# value of the nth Fibonacci numbers. This method was really fast, computing the
# 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.


def summing(num1, num2)
  num1 + num2
end

def fibonacci_last(int)
  counter = 3
  sum_n_1 = 1
  sum_n_2 = 1
  sum = 0
  if int <= 2
    sum = 1
  else
    loop do
      sum = summing(sum_n_1, sum_n_2)
      sum_n_2 = sum_n_1
      sum_n_1 = sum
      counter += 1
      break if counter > int
    end
  end
  sum.to_s.chars.last.to_i
end

# LS:
# Solution
# Part 1

# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

# Part 2

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# Discussion
# Solution 1 answers the main question in this exercise. This is almost too
# simple; our method simply calls the fibonacci method from our last exercises,
# converts the result to a string, and then returns the last digit.

# However, what happens when you get into really large numbers? It probably took
# some time for your computer to calculate the last digit of the 1,000,007th
# Fibonacci number. You probably gave up trying to compute the last digit of the
# 123,456,789th Fibonacci number. That's where Solution 2 comes in.

# Fortunately, you don't need any fancy mathematics knowledge, and you have
# enough Ruby experience already to solve this problem. All you have to do is
# reduce the problem down to its basics.

# To compute the last digit of the nth Fibonacci number, you only need the last
# digit of the nth - 1 and nth -2 numbers. As a result, you only ever need the
# last digit of any intermediate result, which eliminates all of the computing
# effort needed to compute the massive numbers involved. Our second solution
# does exactly this: it only computes and uses the last digit in each
# intermediate result, and computes the last digit of the 123,456,789th
# Fibonacci number in less than a minute.

# Examples:

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# fibonacci_last(123456789) # -> 4
