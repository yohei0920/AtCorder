a, b, c = gets.chomp.split.map(&:to_i)

def can_devide_double_group?(a, b, c)
  return "Yes" if a == b && a == c
  return "Yes" if a + b == c || a + c == b || b + c == a
  "No"
end

puts can_devide_double_group?(a, b, c)