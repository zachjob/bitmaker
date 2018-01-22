def temperature_conversion (temperature_fahrenheit)
  (temperature_fahrenheit - 32) * 5 / 9
end

puts "Please enter the temperature in fahrenheit:"
user_temperature = gets.to_i

print temperature_conversion (user_temperature)
