s, t = gets.chomp.split

def collect?(s, t)
  return true if s == "AtCoder" && t == "Land"
  false
end

puts collect?(s, t) ? 'Yes' : 'No'