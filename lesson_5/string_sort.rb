# Without running the code, try to figure out what would be returned here:

p ['arc', 'bat', 'cape', 'ants', 'cap'].sort

# Answer:
# ['ants', 'arc', 'bat', 'cap', 'cape']

# LS:
# Although the documentation doesn't explicitly state this, String#<=> compares
# multi-character strings character by character, so the strings beginning with
# 'a' will come before those beginning with 'b'; if both characters are the same
# then the next characters in the strings are compared, and so on.

# In the case of 'cap' and 'cape', the comparable characters are all equal, but
# 'cape' is longer and so is considered greater by String#<=>.