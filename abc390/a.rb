nums = gets.chomp.split.map(&:to_i)
currect = nums.sort

(nums.size-1).times do |i|
  sorted = nums[0..]
  sorted[i], sorted[i+1] = sorted[i+1], sorted[i]
  if sorted == currect
    puts 'Yes'
    exit;
  end
end
puts 'No'