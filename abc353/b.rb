n, m = gets.chomp.split.map(&:to_i)
retsu = gets.chomp.split.map(&:to_i)

res = 0
tmp = 0

retsu.each do |r|
  if tmp + r > m
    res += 1
    tmp = 0
  end
  tmp += r
end

res += 1 if tmp > 0
puts res