
# -- Binary Search --

def bsearch(array, target)
  return nil if array.empty?

  mid = array.length / 2
  case target <=> array[mid]
  when -1
    bsearch(array.take(mid), target)
  when 0
    mid
  when 1
    result = bsearch(array.drop(mid + 1), target)
    result.nil? ? nil : result + (mid + 1)
  end
end

p bsearch([7,8,9,10,11,12], 9) # => 2
p bsearch([2,3,4,5,6], 5) # => 3

