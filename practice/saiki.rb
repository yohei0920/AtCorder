require 'benchmark'

# 通常の再帰
def fibonacci_recursive(n)
  return n if n <= 1
  fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

# メモ化を使った再帰
def fibonacci_memo(n, memo = {})
  return n if n <= 1
  return memo[n] if memo.key?(n)
  memo[n] = fibonacci_memo(n - 1, memo) + fibonacci_memo(n - 2, memo)
  memo[n]
end

puts fibonacci_memo(5)

# n = 35  # 計算の大きさ

# Benchmark.bm(10) do |x|
#   x.report("通常の再帰:") { fibonacci_recursive(n) }
#   x.report("メモ化:")     { fibonacci_memo(n) }
# end
