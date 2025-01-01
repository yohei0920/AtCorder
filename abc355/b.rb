n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
cons = false
marged = (a + b).sort

(marged.size - 1).times do |i|
  if a.include?(marged[i]) && a.include?(marged[i+1])
    cons = true 
    break;
  end
end

puts cons ? 'Yes' : 'No'