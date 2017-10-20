fifty =* (1..50)
test = {}
fifty.each do |num|
  # if the number is divisible by 2 and 7 the value should be the key multiplied by 2
  if num % 2 == 0 && num % 7 == 0
    test[num] = num * 2
  # if the number is divisible by 2 the value should be one more than the key
  elsif num % 2 == 0
    test[num] = num + 1
  # if the number is divisible by 7 the value should be one less than the key
  elsif num % 7 == 0
    test[num] = num * -1
  # otherwise the value should be the same number as the key
  else
    test[num] = num
  end
end

puts test
