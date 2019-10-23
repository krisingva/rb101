# Further Exploration: Investigate Enumerable.inject (also known as
# Enumerable.reduce), How might this method be useful in solving this problem?
# (Note that Enumerable methods are available when working with Arrays.) Try
# writing such a solution. Which is clearer? Which is more succinct?

# Previous LS solution:

# def multiple?(number, divisor)
#   number % divisor == 0
# end

# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end

# Becomes:

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  1.upto(max_value).select { |x| x if multiple?(x, 3) || multiple?(x, 5) }.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168