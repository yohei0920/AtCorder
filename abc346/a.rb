_ = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)
mult = []

(nums.size-1).times do |i|
  mult << nums[i] * nums[i+1]
end

puts mult.join(' ')