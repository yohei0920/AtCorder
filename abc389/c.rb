n = gets.to_i

queue = []
cumulative_sum = 0
offset = 0

n.times do
  input = gets.split.map(&:to_i)
  case input[0]
  when 1
    # 要素を追加
    hebi = input[1]
    cumulative_sum += hebi
    queue << cumulative_sum
  when 2
    # 先頭を削除
    if queue.size > 0
      offset = queue.shift
    end
  when 3
    # 指定した位置の累積和を出力
    k = input[1]
    if k == 1
      puts 0
    else
      puts queue[k - 2] - offset
    end
  end
end

# TLE
# n = gets.chomp.to_i
# stack = []

# n.times do |i|
#   type, hebi = gets.chomp.split.map(&:to_i)
#   case type
#   when 1
#     # stackに追加
#     stack << hebi
#   when 2
#     # stackの先頭を削除
#     stack.shift
#   when 3
#     # hebi番目の頭の数字を出力
#     if stack.size == 1
#       puts 0
#     else
#       puts stack[0...hebi-1].sum
#     end
#   else
#     # 何もしない
#   end
# end
