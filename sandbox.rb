def self.sort_drop(array_of_arrays, index)
  sorted_array = array_of_arrays.sort_by { |array| array[0] }
  min_max = sorted_array[index][0]
  sorted_array.delete_if{|array| array[0] != min_max }
  return sorted_array
end

self.sort_drop(total_array, -1)
self.sort_drop(sorted_tie_array, 0)