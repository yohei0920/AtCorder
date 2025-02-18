n = gets.chomp.to_i
init_str = "1"

n.times do
  init_str += "01"
end

puts init_str