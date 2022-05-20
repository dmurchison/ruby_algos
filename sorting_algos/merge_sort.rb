
# -- Merge Sort --

def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = array.take(mid)
  right = array.drop(mid)
  left_sorted, right_sorted = merge_sort(left), merge_sort(right)

  return merge(left_sorted, right_sorted)
end

def merge(left, right)
  merged = []

  until left.empty? || right.empty?
    if left.first < right.first
      merged.push(left.shift)
    else
      merged.push(right.shift)
    end
  end

  return merged + left + right
end

p merge_sort([5,3,2,5,7,4,2,1,4,2]) # => [1, 2, 2, 2, 3, 4, 4, 5, 5, 7]

