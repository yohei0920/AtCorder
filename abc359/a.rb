n = gets.chomp.to_i
search_name = "Takahashi"

res = 0
n.times do
  name = gets.chomp
  res += 1 if search_name == name
end

puts res