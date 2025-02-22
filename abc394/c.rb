str = gets.chomp

chars = str.chars
i = 0

while i < chars.length - 1
  if chars[i] == "W" && chars[i + 1] == "A"
    chars[i] = "A"
    chars[i + 1] = "C"
    i -= 1 if i > 0
  else
    i += 1
  end
end

puts chars.join