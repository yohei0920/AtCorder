def bfs_shortest_path(graph, start, goal)
  queue = [[start]] # パスをキューで管理
  visited = []

  while !queue.empty?
    path = queue.shift # パスを取得
    node = path.last   # パスの最後のノード

    if node == goal
      return path # 最短経路を返す
    end

    unless visited.include?(node)
      visited << node
      graph[node].each do |neighbor|
        new_path = path + [neighbor] # 新しいパスを作成
        queue << new_path
      end
    end
  end

  nil # ゴールに到達できない場合
end

# 実行例
graph = {
  1 => [2, 3],
  2 => [4, 5],
  3 => [6],
  4 => [],
  5 => [6],
  6 => []
}

start = 1
goal = 6
puts "最短経路: #{bfs_shortest_path(graph, start, goal)}"
