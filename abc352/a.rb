_, x, y, z = gets.chomp.split.map(&:to_i)
dir = x > z

if dir
  puts y < z ? 'Yes' : 'No'
else
  puts y > z ? 'Yes' : 'No'
end