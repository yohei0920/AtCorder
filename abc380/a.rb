nums = gets.chomp.chars.map(&:to_i)

if nums.count(1) == 1 && nums.count(2) == 2 && nums.count(3) == 3
  puts "Yes"
else
  puts "No"
end

# tally使う場合

# nums = gets.chomp.to_i.to_s.split("")
# if nums.tally == {"1"=>1, "2"=>2, "3"=>3}
#   puts "Yes"
# else
#   puts "No"
# end