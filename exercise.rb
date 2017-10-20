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

seating_plan.each do |places, row|
  places.each do |seat|
    if seat == nil
      puts "Row #{row + 1} seat #{places.index} is free."
    end
  end
end
