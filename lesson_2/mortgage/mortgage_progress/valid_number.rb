def valid_number?(num)
  if num.is_a? String
  else
    num = num.to_s
  end
  /\A[+-]?\d+\z/.match num
end

p valid_number?(123) == true