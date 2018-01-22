# Beginning arrays
digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

# Translated into a hash

translated = {}
location = 0

digits.each do |num|
  location = num.to_i - 1
  translated[num.to_i] =
    {english: en[location], french: fr[location]}
end

puts translated
