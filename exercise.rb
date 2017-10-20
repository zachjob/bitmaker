seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

seating_plan = {}
seats.each_with_index { |row, index|
  seating_plan[row] = index
}

seating_plan.each do |seats, row|
  puts "#{seats}, #{row + 1}"
end
