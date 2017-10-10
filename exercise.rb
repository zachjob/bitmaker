# Beginning arrays
digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

# Translated into a hash

translated = {}

digits.each do |num|
  translated[num.to_i] =
    {english: en[num.to_i]}
    {french: fr[num.to_i]}
end

puts translated
