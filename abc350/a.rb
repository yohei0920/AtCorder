n = gets.chomp
num = n[3] + n[4] + n[5]
if num.to_i == 316
  puts 'No'
elsif num.to_i >= 1 && num.to_i < 350
  puts 'Yes'
else
  puts 'No'
end