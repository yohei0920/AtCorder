res = []

while n = gets.chomp.to_i
  res.unshift(n)
  break if n == 0
end

puts res