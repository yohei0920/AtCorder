str = gets.chomp.chars
res = []

# 初期化
res << str[0]

(str.size).times do |i|
  (str.size-1).times do |j|
    res << str[i..j+1].join
  end
end

res = res.reject { |r| r.empty? }

puts res.uniq.size

# 2回目
# str = gets.chomp.chars
# res = []

# (str.size).times do |i|
#   (i...str.size).each do |j|
#     res << str[i..j].join
#   end
# end

# puts res.uniq.size