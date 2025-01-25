n = gets.chomp.to_i
nums = gets.chomp.split.map(&:to_i)

is_geometric = true

(1...n - 1).each do |i|
  if nums[i + 1] * nums[i - 1] != nums[i] * nums[i]
    is_geometric = false
    break
  end
end

puts is_geometric ? 'Yes' : 'No'