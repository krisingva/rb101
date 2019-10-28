# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# Input: Any positive or negative integer
# Output: The time of day after adding the input integer to midnight or 00:00

# Notes: There are 1440 minutes in 24 hours.

# If input integer absolute value is less than or equal to 1440, then can just
# add to 0 if positive or subtract from 1440 if negative and then divide the
# result into hours and minutes.
# Example of positive input:
# input = 95, result = 0 + 95 = 95, hours = 95 / 60 = 1 and minutes = 95 % 60 =
# 35, final result = 01:35
# Example of negative input:
# input = -95 result = 1440 - 95 = 1345, hours = 1345 / 60 = 22 and minutes =
# 1345 % 60 = 25, final result = 22:25

# If input integer absolute value is more than 1440, first have to divide by
# 1440 and use the remainder as an input the same as above.
# Example:
# input = 3000, days = 3000 / 1440 = 2, remainder = 3000 % 1440 = 120
# input = 120, final result = 02:00

def time_format(int)
  if int >= 0
    result = 0 + int
  else int < 0
    result = 1440 + int
  end
  hours = (result / 60).to_s
  hours.prepend("0") if hours.size < 2
  minutes = (result % 60).to_s
  minutes.prepend("0") if minutes.size < 2
  "#{hours}:#{minutes}"
end

def time_of_day(integer)
  if integer.abs > 1440
    input = integer % 1440
    time_format(input)
  else
    time_format(integer)
  end
end

# Examples:

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

# LS:

# Approach/Algorithm
# The Integer#divmod method and the % (modulus) operator may prove useful in
# your solution. You may also find Kernel#format handy for formatting your
# results.

# Solution
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end
# Discussion
#   We start out this solution by defining a few useful constants so we don't
#   have a bunch of mystery numbers in our method. The body of the method then
#   boils down to 3 operations:

# Ensure the time difference is in the range of 0..MINUTES_PER_DAY by using the
# % operator (it computes the remainder of dividing the left side by the right
# side)
# Use divmod to break the time difference down into hours and minutes
# Format the results with Kernel#format. Each %02d produces a two-digit number
# with leading zeros as needed.
# Note that it is the first step that ensures that negative numbers are properly
# handled.

