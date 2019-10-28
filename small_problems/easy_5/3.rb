# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Notes: input is a string 'hour:minute', have to convert that string into total
# number of minutes in integer format.

def after_midnight(string)
  array = string.split(':')
  number = (array[0].to_i * 60) + array[1].to_i
  if number == 1440
    return 0
  else
    return number
  end
end

def before_midnight(string)
  array = string.split(':')
  number = 1440 - ((array[0].to_i * 60) + array[1].to_i)
  if number == 1440
    return 0
  else
    return number
  end
end

# Examples:

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us,
# though; it makes the problem more interesting.

# Disregard Daylight Savings and Standard Time and other irregularities.

# LS:

# Solution
# HOURS_PER_DAY = 24
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def after_midnight(time_str)
#   hours, minutes = time_str.split(':').map(&:to_i)
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
#   delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
#   delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
#   delta_minutes
# end
# Discussion
# As with the previous problem, we start with some useful constant definitions.

# The after_midnight method is simple enough; we simply have to split the time
# strings into hours and minutes, then calculate the result in minutes.

# You might be puzzled by .map(&:to_i); it's a shorthand way of doing this:

# something.map { |string| string.to_i }
# In the last statement of after_midnight, we need to use % MINUTES_PER_DAY to
# handle a simple edge case. In the given time format, 00:00 and 24:00 are the
# same. However, the way we implemented after_midnight calculates these as
# different times. We use the modulus operator (%) and MINUTES_PER_DAY to divide
# the calculated minutes by the number of minutes in a day, then return the
# remainder, which will be 0 for both 00:00 and 24:00.

# before_midnight reuses after_midnight by simply subtracting the return value
# of after_midnight from MINUTES_PER_DAY. This does have the unfortunate effect
# of setting delta_minutes to 1440 when we want 0, so the statement after simply
# fixes that.

# Further Exploration
# How would these methods change if you were allowed to use the Date and Time
# classes?