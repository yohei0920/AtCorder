a, b, d = gets.chomp.split.map(&:to_i)
res = []

a.step(b, d) { |i| res << i }

puts res.join(' ')
