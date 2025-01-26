yajirushi = gets.chomp.chars

if yajirushi[0] == '<' && yajirushi[-1] == '>' && yajirushi.count('<') == yajirushi.count('>') && yajirushi.include?('=')
  puts 'Yes'
else
  puts 'No'
end