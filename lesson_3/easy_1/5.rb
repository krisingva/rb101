# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.
p (10..100).include?(42)

# LS answer:
# (10..100).cover?(42)

# From SO:
# The .cover? method is related to the Comparable module, and checks whether an item would fit between the end points in a sorted list. It will return true even if the item is not in the set implied by the Range.

# The .include? method is related to the Enumerable module, and checks whether an item is actually in the complete set implied by the Range. Takes more time to complete than the .cover? method