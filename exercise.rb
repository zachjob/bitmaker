seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

seats.each_with_index {|row, index|
  row.each_with_index { |seat, place|
    if seat == nil
      puts "Row #{index + 1} seat #{place + 1} is free."
    end
  }
}
