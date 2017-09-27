def odd_nums (numbers)
  sum = 0
  numbers.each do |number|
    compare = number % 2

    if compare == 1
      sum += number
    end
  end

  sum
end

user_nums = [1,3,5,2]

puts odd_nums user_nums
