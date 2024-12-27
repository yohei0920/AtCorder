n, l, r = gets.chomp.split.map(&:to_i)
pos_int = Array.new(n) { |i| i + 1 }

pos_int[l-1..r-1] = pos_int[l-1..r-1].reverse
puts pos_int.join(' ')