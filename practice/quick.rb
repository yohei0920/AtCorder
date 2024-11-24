def quick_sort(arr)
  return arr if arr.size <= 1

  pivot = arr.delete_at(arr.size / 2)
  left = arr.select { |a| a < pivot }
  right = arr.select { |a| a >= pivot }

  quick_sort(left) + [pivot] + quick_sort(right)
end

numbers = [5, 3, 8, 6, 2, 7, 4, 1]
puts quick_sort(numbers).inspect