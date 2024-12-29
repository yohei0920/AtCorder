cards = gets.chomp.split.map(&:to_i)
full = {}

cards.each do |card|
  full[card] ? full[card] += 1 : full[card] = 1
end

if full.values.size != 2
  puts 'No'
elsif full.values == [2, 2] || full.values.all? { |v| [1, 3].include?(v) }
  puts 'Yes'
else
  puts 'No'
end 