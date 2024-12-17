N, T, P = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

count = 0

while l.count { |num| num >= T } < P
  l.map! { |num| num + 1 }
  count += 1
end

p count
