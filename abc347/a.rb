_, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

puts a.select { |num| num % k == 0 }.map { |num| num / k }.join(" ")