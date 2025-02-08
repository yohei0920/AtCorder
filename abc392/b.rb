n, _ = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

not_include_numbers = []

1.upto(n) do |i|
  not_include_numbers << i unless x.include?(i)
end

puts not_include_numbers.length
puts not_include_numbers.sort.join(' ')