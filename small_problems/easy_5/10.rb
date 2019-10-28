# Write a method that will take a short line of text, and print it within a box.

# Notes:
# rjust(integer, padstr=' ') → new_str
# If integer is greater than the length of str, returns a new String of length
# integer with str right justified and padded with padstr; otherwise, returns
# str.

# "hello".rjust(4)            #=> "hello"
# "hello".rjust(20)           #=> "               hello"
# "hello".rjust(20, '1234')   #=> "123412341234123hello"


def print_in_box(string)
  length = string.size + 4
  center_length = length - 2
  line_1_center = '-' * center_length
  line_1 = '+' + line_1_center + '+'
  line_2_center = ' ' * center_length
  line_2 = '|' + line_2_center + '|'
  string = string.prepend('| ') << (' |')
  puts line_1
  puts line_2
  puts string
  puts line_2
  puts line_1
end

# Example:

p print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
p print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# LS:
# Solution
# def print_in_box(message)
#    horizontal_rule = "+#{'-' * (message.size + 2)}+"
#    empty_line = "|#{' ' * (message.size + 2)}|"

#    puts horizontal_rule
#    puts empty_line
#    puts "| #{message} |"
#    puts empty_line
#    puts horizontal_rule
# end
#    Discussion This is a fairly straight forward solution To simplify matters,
#    we start out by setting horizontal_rule and empty_line to appropriate
#    values for the top and bottom 2 lines of the box. The expression '-' *
#    (message.size + 2) simply creates a string of message.size + 2 hyphens;
#    combined with the + at the beginning and end of the the string, this is
#    just wide enough to draw the horizontal lines while leaving room for one
#    blank on either side of the message.

# Further Exploration Modify this method so it will truncate the message if it
# will be too wide to fit inside a standard terminal window (80 columns,
# including the sides of the box). For a real challenge, try word wrapping very
# long messages so they appear on multiple lines, but still within a box.