s = gets.chomp.chars

# 奇数なら "No" を出力して終了
if s.size.odd?
  puts "No"
  exit
end

# 2文字ずつ確認し、異なる場合は "No"
pairs = s.each_slice(2)
puts pairs
if pairs.any? { |a, b| a != b }
  puts "No"
  exit
end

# ユニークなペアの種類が条件を満たすか判定
unique_pairs = pairs.map(&:first).uniq.size
puts unique_pairs == s.size / 2 ? "Yes" : "No"
