# What is the output of the following code?

answer = 42

def mess_with_it(some_number) # some_number points to 42, some_number and answer are aliases
  some_number += 8  # some_number is reassigned to 50 but answer still points to 42
end

new_answer = mess_with_it(answer) # new_answer points to 50

p answer - 8  # answer still points to 42, this will evaluate to 34

