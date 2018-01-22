random_strings = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]

# otherwise print the string itself

random_strings.each do |w|
  if w.length > 4 && w == w.downcase
    puts "long and lowercase"
  elsif w == w.downcase
    puts "lowercase"
  elsif w.length > 4
    puts "long"
  else
    puts w
  end
end
