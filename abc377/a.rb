input = gets.chomp.chars
if input.count("A") == 1 && input.count("B") == 1 && input.count("C") == 1
  puts "Yes"
else
  puts "No"
end