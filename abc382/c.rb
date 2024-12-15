n, m = gets.chomp.split.map(&:to_i)
aa = gets.chomp.split.map(&:to_i)
bb = gets.chomp.split.map(&:to_i)

c = [aa[0]]
(1...n).each do |i|
  c[i] = [c[i - 1], aa[i]].min
end

bb.each do |b|
  idx = c.bsearch_index { |x| x <= b }
  if idx.nil?
    puts -1
  else
    puts idx + 1
  end
end


# 1回目(TLE)

# n, m = gets.chomp.split.map(&:to_i)
# aa = gets.chomp.split.map(&:to_i)
# bb = gets.chomp.split.map(&:to_i)

# innone = proc { puts -1 }
# bb.each do |b|
#   aa.find(innone).with_index(1) do |a, i|
#     if b >= a
#       puts i
#       break
#     end
#   end
# end
