x = gets.chomp.to_i
grid = Array.new(9) do |i|
  Array.new(9) do |j|
    (i + 1) * (j + 1)
  end
end

res = 0

grid.each do |gr|
  gr.each do |g|
    res += g if g != x
  end
end

puts res