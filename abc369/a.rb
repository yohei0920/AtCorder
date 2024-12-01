a, b = gets.chomp.split.map(&:to_i)

if a == b
  # aとbが同じ値なら1を出力
  puts 1
elsif (a - b).abs.even?
  # aとbの差分が偶数なら3を出力
  puts 3
else
  # aとbの差分が奇数なら3を出力
  puts 2
end