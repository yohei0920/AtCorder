n, r = gets.chomp.split.map(&:to_i)

def can_division?(d, r)
  if d == 1
     return true if r >= 1600 && r <= 2799
  else
    return true if r >= 1200 && r <= 2399
  end
  false
end

n.times do
  d, a = gets.chomp.split.map(&:to_i)

  r += a if can_division?(d, r)
end

puts r