def valid_float?(num)
  num.to_f.to_s == num && num.to_f >= 0 || num.to_i.to_s == num && num.to_i >= 0
  num.to_f
end

loan = "230000"
p loan
loan = valid_float?(loan)
p loan