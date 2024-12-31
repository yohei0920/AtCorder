# frozen_string_literal: true
INF = 1 << 60
in_a, in_b = gets.chomp.split.map(&:to_i)

person = Set[1, 2, 3]
person.delete(in_a)
person.delete(in_b)

if person.size == 1
  puts person.first
else
  puts -1
end
