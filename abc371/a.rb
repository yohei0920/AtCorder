input = gets.chomp.split
brothers = {
  A: 0,
  B: 0,
  C: 0,
}

# AがBより年上の場合
brothers[:A] += 1 if input[0] == ">"
brothers[:B] += 1 if input[0] == "<"

# AがCより年上の場合
brothers[:A] += 1 if input[1] == ">"
brothers[:C] += 1 if input[1] == "<"

# BがCより年上の場合
brothers[:B] += 1 if input[2] == ">"
brothers[:C] += 1 if input[2] == "<"

# 2番目に大きい値を取得
second_oldest_value = brothers.values.sort[-2]

# 2番目に大きい値を持つキーを取得
second_oldest_key = brothers.key(second_oldest_value)

puts second_oldest_key
