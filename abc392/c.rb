n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

# ゼッケンの対応表
bib_table = {}

# ゼッケンの対応表(逆引き用)
reverse_bib_table = {}

# 見つめ先の対応表
stare_table = {}

1.upto(n) do |i|
  bib_table[q[i-1]] = i
  reverse_bib_table[i] = q[i-1]
  stare_table[i] = p[i-1]
end

res = []

bib_table.sort.each do |b|
  mitume = stare_table[b[1]]
  res << reverse_bib_table[mitume]
end

puts res.join(' ')