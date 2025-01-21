n = gets.chomp.to_i
goal = []

n.times do |i|
  if(i + 1) % 3 == 0
    goal << 'x'
  else
    goal << 'o'
  end
end

puts goal.join