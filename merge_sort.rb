def merge_sort(arr)
  return arr if arr.length <= 1

  arr_left = merge_sort(arr[...(arr.length / 2)])
  arr_right = merge_sort(arr[(arr.length / 2)...])

  sorted = []
  until arr_left.empty? || arr_right.empty?
    if arr_left.first < arr_right.first
      sorted.push(arr_left.shift)
    else
      sorted.push(arr_right.shift)
    end
  end

  sorted.concat(arr_left).concat(arr_right)
end
