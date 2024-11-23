nums = gets.chars.map(&:to_i)

bca_sort = "#{nums[1]}#{nums[2]}#{nums[0]}"
cab_sort = "#{nums[2]}#{nums[0]}#{nums[1]}"

puts "#{bca_sort} #{cab_sort}"