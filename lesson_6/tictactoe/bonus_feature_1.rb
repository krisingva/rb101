# At this point you should have a simple command line Tic Tac Toe game working
# properly. Let's try to add some additional features.

# Improved "join"

# If we run the current game, we'll see the following prompt:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, 9

# This is ok, but we'd like for this message to read a little better. We want to
# separate the last item with a "or", so that it reads:

# => Choose a position to place a piece: 1, 2, 3, 4, 5, 6, 7, 8, or 9

# Currently, we're using the Array#join method, which can only insert a
# delimiter between the array elements, and isn't smart enough to display a
# joining word for the last element.

# Write a method called joinor that will produce the following result:

def joinor(arr, sep = ", ", last_sep = "or")
  str = ''
  case arr.size
  when 0
    str
  when 1
    str << arr[0].to_s
  when 2
    str << arr[0].to_s + " " + last_sep + " " + arr[1].to_s
  else
    arr.each do |num|
      if arr.first == num
        str << num.to_s
      else
        if arr.last == num
          str << sep + last_sep + " "
        else
          str << sep
        end
        str << num.to_s
      end
    end
  end
  str
end

# p joinor([])                       # => ""
# p joinor([1])                      # => "1"
# p joinor([1, 2])                   # => "1 or 2"
# p joinor([1, 2, 3])                # => "1, 2, or 3"
# p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
# p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# LS (uses the join method):
# def joinor(arr, delimiter=', ', word='or')
#   case arr.size
#   when 0 then ''
#   when 1 then arr.first
#   when 2 then arr.join(" #{word} ")
#   else
#     arr[-1] = "#{word} #{arr.last}"
#     arr.join(delimiter)
#   end
# end

# Using a case statement works well here because we need to perform different
# actions based on the number of elements in arr. If arr has 2 elements, then a
# delimiter isn't required and we can just print the 2 elements, separated by
# the value of word. If arr has more than 2 elements, then we permanently mutate
# the last element with arr[-1] = and prepend the value of word. After we've
# modified the last array element, we can just use Array#join to join the
# elements.

# Then, you could use it in the game like this:

# prompt "Choose a position to place a piece: #{joinor(empty_squares(brd))}"
