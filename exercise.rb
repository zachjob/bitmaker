schedule = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

train_one_eleven = schedule[7][:direction]
train_eighty_b = schedule[5][:frequency_in_minutes]
train_six_ten = schedule[2][:direction]

puts "What driection are you travelling?"
travelling = gets
travelling = travelling.gsub("\n",'')

def direct (direction, trains)
  trains.each do |train|
    if train[:direction] == direction
      puts train
    end
  end
end

direct(travelling, schedule)
