n, c = gets.chomp.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)
count = 0
q = t[0] # 初期値

n.times do |num|
  next count += 1 if num == 0
  next if (q - t[num]).abs < c
  
  count += 1
  q = t[num]
end

puts count