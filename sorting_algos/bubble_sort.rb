
# -- Bubble Sort --

def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true

    array.each_with_index do |el, i|
      j = (i + 1)

      if !array[j].nil? && array[i] > array[j]
        sorted = false
        array[i], array[j] = array[j], array[i]
      end

    end
  end

  return array
end

p bubble_sort([5,3,2,5,7,4,2,1,4,2]) # => [1, 2, 2, 2, 3, 4, 4, 5, 5, 7]


