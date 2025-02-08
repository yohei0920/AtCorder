a, b, c = gets.chomp.split.map(&:to_i)

def can?(a, b, c)
  return true if a * b == c
  return true if a * c == b
  return true if b * c == a
  
  false
end

puts can?(a, b, c) ? 'Yes' : 'No'