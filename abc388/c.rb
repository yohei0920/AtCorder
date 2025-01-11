_ = gets.chomp.to_i
rice_cakes = gets.chomp.split.map(&:to_i).sort
res = 0

stocks = []

rice_cakes.each do |rice_cake|
  limit = rice_cake / 2
  idx = stocks.bsearch_index { |s| s > limit } || stocks.size
  
  res += idx
  
  stocks << rice_cake
end

puts res