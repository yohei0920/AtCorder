s, t = gets.chomp.split

if s == "fine" && t == "fine"
  puts 4
elsif s == "sick" && t == "sick"
  puts 1
elsif s == "sick"
  puts 2
else
  puts 3
end