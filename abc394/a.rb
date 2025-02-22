str = gets.chomp
res = []

str.each do |s|
  res << s if s == "2"
end
puts res.join