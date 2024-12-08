# ダイクストラ法
def dijkstra(graph, start)
  distances = {}  # 各ノードへの最短距離を記録
  previous_nodes = {} # 最短経路の経路を記録
  priority_queue = {} # ノードとその距離を格納する優先度付きキュー

  # 初期化
  graph.each_key do |node|
    distances[node] = Float::INFINITY # 距離は無限大で初期化
    priority_queue[node] = Float::INFINITY
  end
  distances[start] = 0
  priority_queue[start] = 0

  until priority_queue.empty?
    # 現在の最小距離のノードを取得
    current_node = priority_queue.min_by { |_, distance| distance }[0]
    priority_queue.delete(current_node)

    # 隣接ノードの距離を更新
    graph[current_node].each do |neighbor, weight|
      new_distance = distances[current_node] + weight
      if new_distance < distances[neighbor]
        distances[neighbor] = new_distance
        priority_queue[neighbor] = new_distance
        previous_nodes[neighbor] = current_node
      end
    end
  end

  { distances: distances, previous_nodes: previous_nodes }
end

# グラフの定義 (隣接リスト形式)
graph = {
  'A' => { 'B' => 4, 'C' => 2 },
  'B' => { 'A' => 4, 'C' => 1, 'D' => 5 },
  'C' => { 'A' => 2, 'B' => 1, 'D' => 8, 'E' => 10 },
  'D' => { 'B' => 5, 'C' => 8, 'E' => 2 },
  'E' => { 'C' => 10, 'D' => 2 }
}

# 実行
start_node = 'A'
result = dijkstra(graph, start_node)

# 結果表示
puts "最短距離: #{result[:distances]}"
puts "経路: #{result[:previous_nodes]}"
