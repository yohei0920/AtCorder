str = gets.chomp
upper = 0
downer = 0

str.each_char { |s| s.match?(/[A-Z]/) ? upper += 1 : downer += 1 }

puts upper > downer ? str.upcase : str.downcase