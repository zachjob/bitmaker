def ordinal(num)
  # 1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th
  # 20th, 30th, 40th, 50th, 60th, 70th, 80th, 90th, 100th
  if num % 10 == 0
    puts "#{num}th."
  elsif num - 1 == 0
    puts "#{num}st."
  elsif num - 2 == 0
    puts "#{num}nd."
  elsif num - 3 == 0
    puts "#{num}rd."
  else
    puts "#{num}th."
  end
end

user_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
user_num.each do |num|
  ordinal num.to_i
end
