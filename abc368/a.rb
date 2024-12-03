n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

k.times do |i|
    a.unshift(a.pop)
end

print a.join(" ")