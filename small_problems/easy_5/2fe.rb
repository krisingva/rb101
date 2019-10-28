# Further Exploration
# How would you approach this problem if you were allowed to use ruby's Date and
# Time classes? Suppose you also needed to consider the day of week? (Assume
# that delta_minutes is the number of minutes before or after midnight between
# Saturday and Sunday; in such a method, a delta_minutes value of -4231 would
# need to produce a return value of Thursday 01:29.)

# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

def day_of_week(input)
  time = Time.new(2019, 10, 20)
  time = time + (input * 60)
  time.strftime("%A %k:%M")
end

p day_of_week(-4231)