N = 12
ans = 0
(1..N).each do |i|
  ans += 1 if gets.chomp.length == i
end
puts ans