input = gets.chomp.split.map(&:to_i)

# 両手をあげてる場合と両手をあげてない場合
if input[0] == input[1]
  puts "Invalid"
else
  # 左手を挙げているならYesが出力
  puts input[0] == 1 ? "Yes" : "No"
end