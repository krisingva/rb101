
def is_an_ip_number?(word)
  int = word.to_i
  int <= 10
end


def ip_array_valid?(array)
  while array.size > 0 do
    word = array.pop
    return false if is_an_ip_number?(word) == false
  end
  return true
end

p ip_array_valid?(%w(1 2 3 4))