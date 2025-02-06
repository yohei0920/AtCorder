DIRECTION = {
  N: "S",
  E: "W",
  W: "E",
  S: "N",
  NE: "SW",
  NW: "SE",
  SE: "NW",
  SW: "NE",
}

d = gets.chomp

puts DIRECTION[d.to_sym]