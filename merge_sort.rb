def merge(arr1, arr2)
  merged = []
  while arr1.size.positive? || arr2.size.positive?
    if arr1.empty?
      merged += arr2.pop(arr2.length)
    elsif arr2.empty?
      merged += arr1.pop(arr1.length)
    else
      merged << (arr1.first < arr2.first ? arr1.shift : arr2.shift)
    end
  end
  merged
end

def merge_sort(arr)
  return arr if arr.size < 2

  left_half = arr.shift(arr.size / 2)
  right_half = arr
  merge(merge_sort(left_half), merge_sort(right_half))
end

arr = []
10.times { arr << (rand * 100).to_i }
p merge_sort(arr)
