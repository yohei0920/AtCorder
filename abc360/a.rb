breakfast = gets.chomp.chars
res = breakfast.index('R') < breakfast.index('M') ? 'Yes' : 'No'
puts res