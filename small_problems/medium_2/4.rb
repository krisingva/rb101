# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(str)
  bool = ''
  arr = str.chars
  # p arr
  # p arr.count("(")
  # p arr.count(")")
  if arr.count("(") == 0 && arr.count(")") == 0
    bool = true
  elsif arr.count("(") == arr.count(")")
    while arr.count("(") != 0
      bool = false
      open = arr.find_index("(")
      closed = arr.find_index(")")
      # p open
      # p closed
      if closed > open
        arr.delete_at(open)
        arr.delete_at(closed)
        bool = true
        next
      else
        bool = false
        break
      end
    end
  else
    bool = false
  end
  bool
end

# Examples:

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

# Note that balanced pairs must each start with a (, not a ).

# LS:
# Solution
# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end

# Discussion
# This is one problem that seems very difficult, but is actually quite easy to
# solve. A string is balanced if for each left parenthesis we have a matching
# right parenthesis.

# We can keep track of this by keeping a tally of the total parentheses count.
# Left parentheses are +1 and right parentheses are -1. If our string is
# balanced, then the total, parens will always be zero after parsing string.

# Notice how we have break if parens < 0. This is used to account for cases
# where a right parenthesis occurs before a left parenthesis, and that right
# parenthesis doesn't have a matching left parenthesis.

# Here is an example: balanced?(')Hey!('). If we should ever have a negative
# value for parens, then we know that our left and right parentheses are
# reversed, and that this isn't a balanced string.

# Further Exploration
# There are a few other characters that should be matching as well. Square
# brackets and curly brackets normally come in pairs. Quotation marks(single and
# double) also typically come in pairs and should be balanced. Can you expand
# this method to take into account those characters?

