N = gets.chomp.to_i
nums = []
N.times do |n|
  a = gets.chomp.split.map(&:to_i)
  nums << a
end

t = 0
l = 0

nums.each do |n|
  diff_time = (t - n[0]).abs
  l -= diff_time if t != 0
  l = 0 if l < 0
  l += n[1]
  t = n[0]
end

puts l