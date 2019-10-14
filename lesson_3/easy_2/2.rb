# Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original munsters_description above):

# 1. "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# 2. "The munsters are creepy in a good way."
# 3. "the munsters are creepy in a good way."
# 4. "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# 1.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.upcase!
munsters_description[0] = munsters_description[0].downcase
munsters_description[4] = munsters_description[4].downcase
p munsters_description
# LS: munsters_description.swapcase!

# 2.
munsters_description = "The Munsters are creepy in a good way."
munsters_description[4] = munsters_description[4].downcase
p munsters_description
# LS: munsters_description.capitalize!

# 3.
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.downcase!

# 4.
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.upcase!