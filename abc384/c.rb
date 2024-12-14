parts = gets.chomp.split.map(&:to_i)
labels = ["A", "B", "C", "D", "E"]
res = []

parts.each.with_index(1) do |_, i|
  res += parts.combination(i).with_index.map do |combo, idx|
    [combo.sum, labels.combination(i).to_a[idx].join]
  end
end
res.sort_by! { |sum, combo | [-sum, combo] }
res.each { |_, combo | puts combo }