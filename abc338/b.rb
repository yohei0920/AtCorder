str_chars = gets.chomp.chars

puts str_chars.tally.sort_by { |c, v| [-v, c] }[0][0]