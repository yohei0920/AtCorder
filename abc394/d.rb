chars_str = gets.chomp.chars

matcher = {
  ']' => '[',
  ')' => '(',
  '>' => '<',
}

stack = []
chars_str.each do |c|
  if !stack.empty? && stack.last == matcher[c]
    stack.pop
  else
    stack.push c
  end
end

puts stack.empty? ? 'Yes' : 'No'
