n = gets.to_i
bills = gets.chomp.split.map(&:to_i)
left = bills.shift

if bills.none? { |b| b > left }
  puts -1
else
  bills.each.with_index do |bill, i|
    if bill > left
      puts i + 2
      exit
    end
  end
end

# リファクタ
# n = gets.to_i
# bills = gets.chomp.split.map(&:to_i)

# left, *rest = bills

# index = rest.find_index { |bill| bill > left }
# puts index ? index + 2 : -1
