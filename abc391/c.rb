n, q = gets.chomp.split.map(&:to_i)

# 巣の初期化
su = Array.new(n) { 1 }

# 移動した鳩の履歴
h = {}

# 複数の巣の数
mult_su_count = 0

def count_double?(r)
  r == 2 # 2なら1に減り、複数羽出なくなるため減らす
end

q.times do
  input = gets.chomp.split.map(&:to_i)
  if input[0] == 1
    pigeon = input[1] - 1
    next_d = input[2] - 1
    
    # 履歴があるか？
    if h[pigeon]
      mult_su_count -= 1 if count_double?(su[h[pigeon]])
      su[h[pigeon]] -= 1
    else
      mult_su_count -= 1 if count_double?(su[pigeon])
      su[pigeon] -= 1
    end
    
    # 最新の複数羽の巣の数を更新
    mult_su_count += 1 if su[next_d] == 1
    su[next_d] += 1

    # 移動の履歴を更新
    h[pigeon] = next_d
  else
    puts mult_su_count
  end
end
