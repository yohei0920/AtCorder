n = gets.to_i
a_ary = gets.chomp.split.map(&:to_i)

sorted_a = a_ary.sort
second_max = sorted_a[-2]
puts a_ary.index(second_max) + 1