def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num && num.to_f > 0.0
end

loan = "0.0"
p loan
if valid_number?(loan)
  loan = loan.to_f
else
  puts "invalid number"
end
p loan