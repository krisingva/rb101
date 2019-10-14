# Starting with the string:

famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

# Use the String#insert method: insert(index, other_str) → str Inserts other_str
# before the character at the given index, modifying str. Negative indices count
# from the end of the string, and insert after the given character. The intent
# is insert aString so that it starts at the given index
p famous_words.insert(0, 'Four score and ')

# Use the String#prepend method: prepend(other_str1, other_str2, ...) → str
# Prepend—Prepend the given strings to str.
p famous_words.prepend('Four ', 'score ', 'and ')

# LS answer: "Four score and " + famous_words or

# famous_words.prepend("Four score and ") or

# "Four score and " << famous_words