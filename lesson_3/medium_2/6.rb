# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# My answer:

def color_valid(color)
  return color == "blue" || color == "green"
end

p color_valid("blue") == true
p color_valid("green") == true
p color_valid("x") == false
p color_valid("") == false

#LS:
# def color_valid(color)
#   color == "blue" || color == "green"
# end
# Both of these methods do exactly the same thing - but one is much more complex
# to read.