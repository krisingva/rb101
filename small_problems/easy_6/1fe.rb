# Further Exploration
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

# Our solution returns the following results for inputs outside the range 0-360:

# dms(400) == %(400°00'00")
# dms(-40) == %(-40°00'00")
# dms(-420) == %(-420°00'00")
# Since degrees are normally restricted to the range 0-360, can you modify the
# code so it returns a value in the appropriate range when the input is less
# than 0 or greater than 360?

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
UPPER_LIMIT = 360
LOWER_LIMIT = 0

def dms(degrees_float)
  if degrees_float > UPPER_LIMIT
    quotient, degrees_float = degrees_float.divmod(UPPER_LIMIT)
  elsif degrees_float < -UPPER_LIMIT
    quotient, degrees_float = degrees_float.divmod(UPPER_LIMIT)
  elsif (degrees_float > -UPPER_LIMIT) && (degrees_float < LOWER_LIMIT)
    degrees_float = degrees_float + UPPER_LIMIT
  else
    degrees_float
  end
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")