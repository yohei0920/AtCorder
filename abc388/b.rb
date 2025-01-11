n, d = gets.chomp.split.map(&:to_i)
snakes = Array.new(n) { gets.chomp.split.map(&:to_i) }
res = []

1.upto(d) do |i|
  snakes.each do |snake|
    res << snake[0] * (snake[1] + i)
  end
  puts res.max
  res = []
end
