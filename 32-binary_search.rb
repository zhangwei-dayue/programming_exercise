require 'benchmark'

def get_limits(a)
  [0, a.length - 1]
end

def binary_search(a, value)
  first, last = get_limits(a)
  while first < last
    mid = (first + last) / 2
    if a[mid] == value
      return mid
      break
    elsif a[mid] < value
      first = mid + 1
    else
      last = mid
    end
  end
end

arr = [0, 5, 13, 13, 30, 42, 52, 70, 85, 96, 103, 111, 116, 127, 130, 143, 150, 150, 161, 175, 207, 210, 218, 246, 257, 257, 263, 280, 304, 310, 326, 327, 332, 346, 360, 371, 374, 378, 406, 407, 407, 408, 428, 431, 437, 442, 445, 479, 489, 491, 505, 517, 520, 536, 548, 598, 602, 605, 618, 642, 649, 654, 659, 662, 677, 678, 682, 689, 695, 696, 697, 701, 711, 717, 727, 737, 745, 749, 754, 757, 770, 786, 802, 805, 814, 832, 840, 850, 853, 854, 888, 894, 904, 913, 913, 945, 962, 964, 972, 998]
puts binary_search(arr, 371)
arr1 = Array.new(10){rand(10)}.sort
arr2 = Array.new(10000){rand(10000)}.sort
arr3 = Array.new(1000000){rand(1000000)}.sort


Benchmark.bm do |x|
  x.report{binary_search(arr1, 4)}
  x.report{binary_search(arr2, 4000)}
  x.report{binary_search(arr3, 400000)}
end
