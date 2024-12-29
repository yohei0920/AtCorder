number = gets.chomp
cp_number = number.dup
cp_number.gsub!(/00/, "x")
puts cp_number.size

# WA
# char_numbers = gets.chomp
# zero_count = char_numbers.count("0")
# zero_size = if zero_count == 0
#               0
#             elsif zero_count.odd?
#               zero_count / 2 + 1
#             else
#               zero_count / 2
#             end
# puts zero_size + char_numbers.scan(/[^0]/).count