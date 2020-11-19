Write out pseudo-code (both casual and formal) that does the following:

1. a method that returns the sum of two integers

1. Casual
Given two integers.
Add the two integers together.
Return the results.

1. Formal
START

Given two integers

SET the first number = number1 and second number = number2

SET sum = number1 + number2

PRINT sum

END

2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

2. Casual
Given an array of strings
Iterate through the array and add each value to a new string
Return the new string

2. Formal
START

SET array = given array of strings

SET iterator = 1

SET new_arr = nil

WHILE iterator <= length of array
  add current string to new_arr
  iterator = iterator + 1

SET string = concatenation of all elements of new_arr

PRINT string

END
  
3. a method that takes an array of integers, and returns a new array with every other element

3. Casual
Given an array of integers
Determine which array elements have even numbered index
Iterate through array and add even numbered indexed elements to a new array
Return the new array

3. Formal
START

SET array = given array of integers

SET new_arr = nil

SET iterator = 0

WHILE iterator <= length of array
  iterator = iterator + 1
  IF element has odd index
    go to next iteration
  ELSE
  add element to new_arr

PRINT new_arr 

END




