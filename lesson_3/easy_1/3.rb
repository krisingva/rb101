# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
mod_array = advice.split

mod_array[6] = "urgent"

advice = mod_array.join(' ')
p advice

# LS answer: advice.gsub!('important', 'urgent')