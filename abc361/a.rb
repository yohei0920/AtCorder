_, k, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

b = a.insert(k, x)
puts b.join(' ')


# 配列を分割し、結合するシンプルなやり方

# _, k, x = gets.chomp.split.map(&:to_i)
# a = gets.chomp.split.map(&:to_i)

# b = a[0...k] + [x] + a[k..-1]
# puts b.join(' ')