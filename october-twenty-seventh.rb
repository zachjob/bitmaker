ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
{1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
{1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
{1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
{1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
{1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

score = {'Smudge' => 0, 'Tigger' => 0, 'Simba' => 0, 'Bella' => 0, 'Lucky' => 0, 'Felix' => 0, 'Boots' => 0}

ballots.each do |b|
  b.each do |key, value|
    if key == 1
      score[value] += 3
    elsif key == 2
      score[value] += 2
    elsif key == 3
      score[value] += 1
    end
  end

end

puts score
