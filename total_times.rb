dice1 = (1..6)
dice2 = (1..6)
total = 0
occurence = {2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0, 9 => 0, 10 => 0, 11 => 0, 12 => 0}
counter = 0

dice1.each do |roll1|
  dice2.each do |roll2|
    total = roll1 + roll2
    if total == 2
      occurence[2] += 1
    elsif total == 3
      occurence[3] += 1
    elsif total == 4
      occurence[4] += 1
    elsif total == 5
      occurence[5] += 1
    elsif total == 6
      occurence[6] += 1
    elsif total == 7
      occurence[7] += 1
    elsif total == 8
      occurence[8] += 1
    elsif total == 9
      occurence[9] += 1
    elsif total == 10
      occurence[10] += 1
    elsif total == 11
      occurence[11] += 1
    elsif total == 12
      occurence[12] += 1
    end
  end
end

occurence.each do |total, times|
  puts "#{total} occurs #{times}."
end
