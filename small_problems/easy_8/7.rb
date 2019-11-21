# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(str)
  arr = str.chars.map do |char|
    char * 2
  end
  arr.join
end

# LS:
# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end

# Discussion
# This solution is straightforward. We initialize a result string, then iterate
# through the original string while appending each character to the result 2
# times. Finally, we return the result string.

# Examples:

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''