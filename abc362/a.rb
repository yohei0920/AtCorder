r, g, b = gets.chomp.split.map(&:to_i)
color = gets.chomp

if color == "Red"
  puts [g, b].min
elsif color == "Green"
  puts [r, b].min
else
  puts [r, g].min
end