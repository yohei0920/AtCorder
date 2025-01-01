n, _ = gets.chomp.split.map(&:to_i)
std = gets.chomp.split.map(&:to_i)
nutrients = Array.new(n) { gets.chomp.split.map(&:to_i) }.transpose
(std.size).times do |i|
  if std[i] > nutrients[i].sum
    puts 'No'
    exit
  end
end
puts 'Yes'