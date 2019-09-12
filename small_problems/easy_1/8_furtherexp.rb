# Array Average

# Change the return value of average from an integer to a float

def average(array)
  sum = array.sum.to_f
  count = array.count
  ave = sum/count
end

p average([1,2,3,4,5]) 
p average([1, 5, 87, 45, 8, 8]) 
p average([9, 47, 23, 95, 16, 52]) 



