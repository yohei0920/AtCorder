n, m = gets.chomp.split.map(&:to_i)
grid_s = Array.new(n) { |i| i = gets.chomp.chars }
grid_t = Array.new(m) { |i| i = gets.chomp.chars }

def find_subarray(s, t)
  s.each_with_index do |row, i|
    row.each_with_index do |_, j|
      if i + t.length <= s.length && j + t[0].length <= s[0].length
        match = true
        t.each_with_index do |t_row, ti|
          if t_row != s[i + ti][j, t_row.length]
            match = false
            break
          end
        end
        return [i+1, j+1] if match
      end
    end
  end
end

puts find_subarray(grid_s, grid_t).join(' ')