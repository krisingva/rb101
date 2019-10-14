# Optional Arguments Redux
# Assume you have the following code:

#require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# What will each of the 4 puts statements print?

# My answer:
# puts Date.new
# gives:
# "#<Date: ...>"
# puts Date.new(2016)
# gives:
# "#<Date: 2016 ...>"
# puts Date.new(2016, 5)
# gives:
# "#<Date: 2016-05 ...>"
# puts Date.new(2016, 5, 13)
# gives:
# "#<Date: 2016-05-13 ...>"

# Correct answer:
# -4712-01-01
# 2016-01-01
# 2016-05-01
# 2016-05-13

# TIL: require 'date' loads the Date class. Date.new takes arguments in order of
# year, month, day. If no argument is given, Date.new will give the Julian year
# number(-4712), followed by 01 for month, followed by 01 for date. From
# documentation: new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) →
# date. The use of brackets shows that all of the arguments are optional. The
# nesting of brackets is used to indicate that arguments missing will result in
# the remaining values being omitted. For example if you omit the month, you
# must omit mday and start.