arr1 = [1,2,3]
arr2 = [1,1,2]
arr3 = [1,1,2,2]

def find_repeated_number(arr)
  array = []
  i = 0
  while i < (arr.size - 1)
    j = i + 1
    while j < arr.size
      if arr[i] == arr[j]
        array << arr[i]
      end
      j += 1
    end
    i += 1
  end
  return array.uniq
end

puts find_repeated_number(arr1).to_s
puts find_repeated_number(arr2).to_s
puts find_repeated_number(arr3).to_s
