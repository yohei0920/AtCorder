h = gets.chomp.to_i
i = 1
res = 1

while res <= h do
  res += 2 ** i
  i += 1
end

puts i