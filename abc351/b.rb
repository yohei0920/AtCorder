n = gets.chomp.to_i
grid_a = Array.new(n) { gets.chomp.chars }
grid_b = Array.new(n) { gets.chomp.chars }

n.times do |i|
  next if grid_a[i] == grid_b[i]

  n.times do |j|
    next if grid_a[i][j] == grid_b[i][j]
    puts [i+1, j+1].join(' ')
    break;
  end
end

# リファクタ
# n = gets.to_i
# grid_a = Array.new(n) { gets.chomp.chars }
# grid_b = Array.new(n) { gets.chomp.chars }

# n.times do |i|
#   j = (0...n).find { |j| grid_a[i][j] != grid_b[i][j] }
#   puts "#{i + 1} #{j + 1}" if j
# end