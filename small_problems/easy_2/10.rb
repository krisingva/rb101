# What will the following code print, and why? Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
# previous line mutates array2 to contain all the items from array1
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
# previous line mutates the items in array1 that start with 'C' or 'S' but array2 is not affected by this code, it still contains the items from the original array1 collection
puts array2

# LS
# Discussion
# Wait a minute! We changed Curly to CURLY, Shemp to SHEMP, and Chico to CHICO in array1. How'd those changes end up in array2 as well?

# The answer lies in the fact that the first each loop simply copies a bunch of references from array1 to array2. When that first loop completes, both arrays not only contain the same values, they contain the same String objects. If you modify one of those Strings, that modification will show up in both Arrays.

# If this answer surprises you, reread the section on Pass by Reference vs Pass by Value in Lesson 2 of Programming Foundations. To be succesful with ruby, you must understand how values are passed around, and what mutation means for those values.

# Further Exploration
# How can this feature of ruby get you in trouble? How can you avoid it?
# When working with collections, you would have to take care not to have separate collections containing items that point to the same objects. Rather, you should make copies of the objects and have the items point to the copies.