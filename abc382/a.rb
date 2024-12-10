_, d = gets.chomp.split.map(&:to_i)
cookies = gets.chomp.chars

eated_cookies = cookies.count("@") - d
empty_box = cookies.count - eated_cookies
puts empty_box