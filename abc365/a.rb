Y = gets.chomp.to_i

if Y % 400 == 0
  puts 366
elsif Y % 100 == 0
  puts 365
elsif Y % 4 == 0
  puts 366
else
  puts 365
end