_, m = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

cnt = 0

h.each do |alien|
  if m >= alien
    cnt += 1
    m -= alien
    next
  end
  break
end

puts cnt