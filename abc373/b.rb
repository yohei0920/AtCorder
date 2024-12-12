h = Hash.new

als = gets.chomp.chars
als.each.with_index(1) do |a, i|
  h[a] = i
end

alp = ("A".."Z").to_a
cnt = 0
alp.each_cons(2) do |a, b|
  cnt += (h[a] - h[b]).abs
end
puts cnt

# 別解
# als = gets.chomp
# alp = ("A".."Z").to_a
# cnt = 0

# alp.each_cons(2) do |a, b|
#   cnt += (als.index(a) - als.index(b)).abs
# end

# puts cnt
