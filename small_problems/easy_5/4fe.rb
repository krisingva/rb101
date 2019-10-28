def swap_first_last_characters(a, b)
  a, b = b, a
end


def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word[0], word[-1])
  end
  result.join(' ')
end
p swap('how wonderful')

