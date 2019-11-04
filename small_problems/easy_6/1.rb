# Write a method that takes a floating point number that represents an angle
# between 0 and 360 degrees and returns a String that represents that angle in
# degrees, minutes and seconds. You should use a degree symbol (°) to represent
# degrees, a single quote (') to represent minutes, and a double quote (") to
# represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# Note: your results may differ slightly depending on how you round values, but
# should be within a second or two of the results shown.

# You should use two digit numbers with leading zeros when formatting the
# minutes and seconds, e.g., 321°03'07".

# You may use this constant to represent the degree symbol:

# DEGREE = "\xC2\xB0"

# My notes:
# 1 degree = 60 minutes = 3600 seconds

DEGREE = "\xC2\xB0"
MINUTES_IN_A_DEGREE = 60
SECONDS_IN_A_MINUTE = 60

def dms(number)
  degrees = number.floor
  remainder = number -  degrees
  minutes = remainder * MINUTES_IN_A_DEGREE
  minutes_rounded = minutes.floor
  seconds = (minutes - minutes_rounded) * SECONDS_IN_A_MINUTE
  minutes_rounded = format('%02d', minutes_rounded)
  seconds = format('%02d', seconds)
  %(#{degrees}#{DEGREE}#{minutes_rounded}'#{seconds}")
end

# LS:
# Solution
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# Examples:

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


# Discussion
# We start by defining some useful constants - including the supplied DEGREE
# constant. These constants aren't essential, but they help with understanding
# what is going on in each step.

# The method starts out by converting the number of degrees to seconds; this
# makes it easier to compute the whole number of degrees, minutes, and seconds.
# Next, we use divmod to get the whole number of degrees, and a remainder that
# represents the number of seconds in the fractional part of the original value.
# We then use divmod again to split the remainder into a whole number of
# minutes, and a whole number of seconds. The final step puts everything
# together with #Kernel.format.

# It's worth noting that the desired output contains both single and double
# quote characters. Ruby provides a variety of ways to deal with quotes inside
# strings; the easiest uses %(), %q() or %Q() to delimit the string. We use %()
# here.

