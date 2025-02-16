a, b = gets.chomp.split.map(&:to_i)
nums = [0,1,2] # 出力用

del_nums = nums.dup
del_nums.delete(a+b) if a+b < 3

puts del_nums[0]