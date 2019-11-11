# Here's another example.

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# Can you take this code apart, just like before? What will be output and what
# will be the value of my_arr? Check the solution below once you have tried this
# on your own.

# output:
# 18
# 7
# 12
# return:
# my_arr == original array
# my_arr
# => [[18, 7], [3, 12]]

# Line 1:
# Action: Variable assignment, initialize local variable my_arr that will point to the results of the each method call
# Object: the results of the each method call ([[18, 7], [3, 12]])
# LS: n/a!!!
# Side-effect: no
# Return value: the original array
# Is return value used? no

# Line 1:
# Action: call each method
# Object: outer array
# Side-effect: no
# Return value: the original array
# Is return value used? yes, the return value is assigned to my_arr

# Line 1-7:
# Action: outer block execution
# Object: each element of outer array (which are the sub-arrays)
# Side-effect: yes, outputs each item of sub-arrays that is bigger than 5
# LS: none!!!
# Return value: last line of code that gets evaluated, in this case puts num on line 4, puts always returns nil
# LS: each sub-array!!! WHY????
# Is return value used? no

# Line 2:
# Action: call each method
# Object: each sub-array
# Side-effect: no
# Return value: original sub-array
# Is return value used? no
# LS: yes, used to determine return value of outer block!!! WHY????

# Line 2-6:
# Action: inner block execution
# Object: each item of sub-arrays (which are integers)
# Side-effect: yes, outputs each item of sub-arrays that is bigger than 5
# LS: no!!!
# Return value: nil
# Is return value used? no

# Line 3:
# Action: comparison (>)
# Object: each item of sub-arrays (which are integers)
# Side-effect: no
# Return value: true or false depending on item
# Is return value used? yes, used to determine whether line 4 gets executed
# LS: yes, (evaluated by if)

# Line 3-5:
# Action: conditional (if)
# Object: each item of sub-arrays (which are integers)
# Side-effect: yes, outputs each item of sub-arrays that is bigger than 5
# LS: no!!!
# Return value: From SO: "If your if statement doesn't result in any code being run, it returns nil, Otherwise, it returns the value of the code that was run." The puts statement will return nil, that is then the return of the if statement. nil
# Is return value used? no
# LS: yes, used to determine return value of inner block!!!

# Line 4:
# Action: call puts method
# Object: each item of sub-arrays that is bigger than 5
# LS: element of sub-array in that iteration!!!
# Side-effect: yes, outputs each item passed to it as string representation
# Return value: nil
# Is return value used? no
# LS: yes, used to determine return value of inner block!!!

