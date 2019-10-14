# Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".

# Review the String#slice! documentation, and use that method to make the return
# value "Few things in life are as important as ". But leave the advice variable
# as "house training your pet dinosaur.".

advice.slice!(0..38)
p advice

# As a bonus, what happens if you use the String#slice method instead?
# String#slice! Deletes the specified portion from str, and returns the portion
# deleted. String#slice Does not mutate the original string, it will only return
# the portion of the string that was captured with the slice method.

# LS answer: advice.slice!(0, advice.index('house'))