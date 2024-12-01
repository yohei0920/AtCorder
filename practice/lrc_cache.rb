class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @cache = {}
    @order = []
  end

  def get(key)
    if @cache.key?(key)
      # 使用されたキーを再配置
      @order.delete(key)
      @order << key
      @cache[key]
    else
      -1
    end
  end

  def put(key, value)
    if @cache.key?(key)
      @order.delete(key)
    elsif @cache.size >= @capacity
      # 最も使用されていないキーを削除
      lru = @order.shift
      @cache.delete(lru)
    end
    @order << key
    @cache[key] = value
  end
end

# 実行例
cache = LRUCache.new(2)
cache.put(1, 1)
cache.put(2, 2)
puts cache.get(1)  # => 1
cache.put(3, 3)    # 2が削除される
puts cache.get(2)  # => -1
cache.put(4, 4)    # 1が削除される
puts cache.get(1)  # => -1
puts cache.get(3)  # => 3
puts cache.get(4)  # => 4
