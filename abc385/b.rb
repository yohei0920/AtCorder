h, w, x, y = gets.chomp.split.map(&:to_i)
grid = Array.new(h) { gets.chomp.chars }
tt = gets.chomp.chars
x, y = x - 1, y - 1
cnt = 0

tt.each do |t|
  case t
  when "U" then
    x -= 1 if grid[x - 1][y] != "#"
  when "D" then
    x += 1 if grid[x + 1][y] != "#"
  when "R" then
    y += 1 if grid[x][y + 1] != "#"
  when "L" then
    y -= 1 if grid[x][y - 1] != "#"
  end
  
  if grid[x][y] == "@"
    cnt += 1
    grid[x][y] = "."
  end
end

puts [x + 1, y + 1, cnt].join(' ')