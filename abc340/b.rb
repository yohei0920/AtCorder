n = gets.to_i
a = []

n.times do
  q_1, q_2 = gets.chomp.split.map(&:to_i)
  case q_1
  when 1
    a << q_2
  else
    puts a.reverse[q_2 - 1]
  end
end