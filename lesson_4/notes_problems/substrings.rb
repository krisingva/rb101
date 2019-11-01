def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_idx + 1
  loop do
    break if start_substring_idx == str.size
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx + 1
  end
  result
end

# Denser code:
# def substrings(str)
#   result = []
#   0.upto(str.size - 2).each do |start_substring_idx|
#     (start_substring_idx + 1).upto(str.size - 1) do |end_substring_idx|
#       result << str[start_substring_idx..end_substring_idx]
#     end
#   end
#   result
# end

p substrings("abcddcbA")

p substrings("halo")