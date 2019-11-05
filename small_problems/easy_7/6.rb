# Modify the method from the previous exercise so it ignores non-alphabetic
# characters when determining whether it should uppercase or lowercase each
# letter. The non-alphabetic characters should still be included in the return
# value; they just don't count when toggling the desired case.

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def staggered_case(string)
  result = ''
  counter = 0
  string.chars.each do |char|
    if char !UPPERCASE.include?(char) && !LOWERCASE.include?(char)
      result += char
    elsif counter.even?
      result += char.upcase
      counter += 1
    else counter.odd?
      result += char.downcase
      counter += 1
    end
  end
  result
end

# Example:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# LS:
# Solution
# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end

# Discussion
# This solution is very similar to the previous solution; the only difference is
# that we need to avoid changing need_upper when processing non-alphabetic
# characters. We use a simple regular expression with the /i flag (ignore case)
# to detect letters.

# Further Exploration
# Modify this method so the caller can determine whether non-alphabetic
# characters should be counted when determining the upper/lowercase state. That
# is, you want a method that can perform the same actions that this method does,
# or operates like the previous version.

# Hint: Use a keyword argument.


