
# -- Quick Sort --

def quick_sort(array)
  return array if array.length <= 1

  pivot = array.first
  left = array.drop(1).select { |el| el <= pivot }
  right = array.drop(1).select { |el| el > pivot }

  left_sorted, right_sorted = quick_sort(left), quick_sort(right)

  return left_sorted + [pivot] + right_sorted
end

p quick_sort([5,3,2,5,7,4,2,1,4,2]) # => [1, 2, 2, 2, 3, 4, 4, 5, 5, 7]

