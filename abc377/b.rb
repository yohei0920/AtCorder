mass = 8.times.map { gets.chomp.chars }

mass.each_with_index do |row, i|
  row.each do |cell|
    if cell == "#"
      mass[i] = row.map { |c| c == "#" ? "#" : "x" }
      break;
    end
  end
end

res = mass.transpose.map { |c| c.include?("#") ? 0 : c.count(".") }.sum

puts res