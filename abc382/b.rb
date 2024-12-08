n, d = gets.chomp.split.map(&:to_i)
cookies = gets.chomp.chars

eated_cookies = []
cookies.reverse.each do |c|
  if c == "@" && d > 0
    d -= 1
    eated_cookies << "."
  else
    eated_cookies << c
  end
end

puts eated_cookies.reverse.join

# リファクタ
# _, d = gets.chomp.split.map(&:to_i)
# cookies = gets.chomp.chars

# eated_cookies = []
# eated_cookies = cookies.reverse.map do |c|
#   c == "@" && d > 0 ? (d -= 1; ".") : c
# end

# puts eated_cookies.reverse.join

