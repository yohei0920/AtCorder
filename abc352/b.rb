currect = gets.chomp.chars
diference = gets.chomp.chars
res = []
k = -1

currect.each.with_index do |c, i|
  idx = diference[(k+1)..].find_index(c)
  k += idx + 1
  res << k + 1
end

puts res.join(' ')
  