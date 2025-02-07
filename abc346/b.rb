def is_piano_key?(w, b)
  str = "wbwbwwbwbwbw" * 50
  
  str.size.times do |i|
    w_cnt = str[i...i + w + b].count("w")
    b_cnt = str[i...i + w + b].count("b")
    
    return "Yes" if w_cnt == w && b_cnt == b
  end
  
  "No"
end

w, b = gets.split.map(&:to_i)
puts is_piano_key?(w, b)
