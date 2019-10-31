# We'll wrap up this assignment with one more example from earlier. Recall our
# initial selection example of selecting the letter 'g' out of the alphabet.
# Let's write a method called select_letter, that takes a string and returns a
# new string containing only the letter that we specified. We want it to behave
# like this:

def select_letter(string, character)
  counter = 0
  new_string = ''
  loop do
    break if counter == string.size
    if string[counter] == character
      new_string << string[counter]
    end
    counter += 1
  end
  new_string
end

question = 'How many times does a particular character appear in this sentence?'

p select_letter(question, 'a') # => "aaaaaaaa"
p select_letter(question, 't') # => "ttttt"
p select_letter(question, 'z') # => ""

# And because select_letter returns a string, if we wanted to, we can continue
# to chain string methods on the return value. Suppose we wanted to find out how
# many times a letter occurs in a sentence, we could use our method above
# chained with String#size, like so:

# select_letter(question, 'a').size # => 8
# select_letter(question, 't').size # => 5
# select_letter(question, 'z').size # => 0
# Note that now the return value of the entire expression is an integer.
