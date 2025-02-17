str = gets.chomp.chars
h = {}

str.each do |s|
  if !h[s]
    h[s] = 1 
  else
    h[s] += 1
  end
end

v = h.key(1)

puts str.index(v) + 1
  