# Unlucky Days
# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

# Notes: Iterate through all the 13th of the year given and count how many of
# them were also a friday.

require 'date'

def friday_13th(year)
  months = 1.upto(12).to_a
  arr = months.select do |month|
    Date.new(year,month,13).friday?
  end
  arr.count
end


# Examples:

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# LS:

# Approach/Algorithm
# Ruby's Date class may be helpful here.
# Look at how to initialize a Date object
# Look at the friday? method

# Solution
# require 'date'

# def friday_13th(year)
#   unlucky_count = 0
#   thirteenth = Date.new(year, 1, 13)
#   12.times do
#     unlucky_count += 1 if thirteenth.friday?
#     thirteenth = thirteenth.next_month
#   end
#   unlucky_count
# end

# Discussion
# This one is interesting. First, we must require the Date class, since that
# class isn't part of the core library. This problem asks us to find all Friday
# the 13ths in a given year. To do this is, we step through each month of the
# year and look at the 13th of the month; if it's a Friday, we increment
# unlucky_count.