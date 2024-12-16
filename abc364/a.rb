N = gets.chomp.to_i
just_before_eaten_flavor = []

N.times do |n|
  now_flavor = gets.chomp
  just_before_eaten_flavor << now_flavor
  next if just_before_eaten_flavor.size < 2
  if just_before_eaten_flavor[-2] == "sweet" && now_flavor == "sweet"
    if N == n + 1
      puts 'Yes'
    else
      puts 'No'
    end
    exit
  end
end

puts 'Yes'

# refactor

# N = gets.chomp.to_i
# prev_flavor = nil

# N.times do |n|
#   now_flavor = gets.chomp
#   if prev_flavor == "sweet" && now_flavor == "sweet"
#     puts n == N - 1 ? "Yes" : "No"
#     exit
#   end
#   prev_flavor = now_flavor
# end

# puts "Yes"


# another answer

# N = gets.chomp.to_i
# flavors = Array.new(N) { gets.chomp }

# (0...(N - 1)).each do |i|
#   if flavors[i] == "sweet" && flavors[i + 1] == "sweet"
#     puts i + 1 == N - 1 ? "Yes" : "No"
#     exit
#   end
# end

# puts "Yes"
