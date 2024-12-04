a, b, c = gets.chomp.split.map(&:to_i)
if b < c
  puts (b..c).include?(a) ? "No" : "Yes"
else
  puts (c..b).include?(a) ? "Yes" : "No"
end