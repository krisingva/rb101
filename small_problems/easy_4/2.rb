# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

require "rounding"

def century(number)
  num = number.ceil_to(100)
  a = (num / 100).to_s
  string_array = a.split("")
  last_two = string_array.pop(2)

  if (last_two.join == "11") || (last_two.join == "12") || (last_two.join == "13")
    a << "th"
  elsif last_two[-1] == "1"
    a << "st"
  elsif last_two[-1] == "2"
    a << "nd"
  elsif last_two[-1] == "3"
    a << "rd"
  else
    a << "th"
  end
  a
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# LS:
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end

# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10

#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
# Discussion
#   First, notice a pattern about a century. It is equal to the current year
#   divided by 100 plus 1. The exception to this is if the year is some multiple
#   of 100. In that case, the century is the current year divided by 100.

# Next we need to understand which suffix to append for our century, the options
# being: 'th', 'nd', 'rd', 'st'. We decide which one to use by checking the last
# digit of the century. Though, before we do that, we do need to do one extra
# check. If the century's value mod 100 ends in either 11, 12, or 13, then we
# should return 'th'. Any other time, we can return a suffix determined by our
# case statement and the value of century % 10.

# Finally, we combine the string representation of the century with the correct
# suffix, and we have our answer.



