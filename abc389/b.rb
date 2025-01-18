n = gets.chomp.to_i
res = 1
cnt = 1

while res != n
  cnt += 1
  res *= cnt
end

puts cnt