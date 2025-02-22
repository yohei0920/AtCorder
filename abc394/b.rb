n = gets.chomp.to_i
mult_str = []

n.times do
  str = gets.chomp
  mult_str << str
end

sort_by_length = mult_str.sort{ |a, b| a.length <=> b.length }

puts sort_by_length.join