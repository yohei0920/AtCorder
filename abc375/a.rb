n = gets.chomp.to_i
t = gets.chomp.chars
cnt = 0

(n-2).times do |i|
  next if t[i] == "."
  cnt += 1 if t[i+1] == "." && t[i+2] =="#"
end

puts cnt