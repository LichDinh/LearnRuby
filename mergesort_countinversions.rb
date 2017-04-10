#!/bin/ruby

t = gets.strip.to_i

def merge(left, right)
  result = []
  until left.length == 0 || right.length == 0 do
    if left.first <= right.first
      result << left.shift
    else left.first > right.first
      result << right.shift
      $count += 1
    end
  end
  return result + left + right
end

def mergeSort(array)
  if array.length == 1 
    return array
  else
    mid = array.length/2
    return merge(mergeSort(array[0..mid-1]), mergeSort(array[mid..array.length-1]))
  end
end

for a0 in (0..t-1)
  n = gets.strip.to_i
  arr = gets.strip
  arr = arr.split(' ').map(&:to_i)
  $count = 0
  if n <= 1
    puts 0
  else
    puts mergeSort(arr)
  end
  puts $count
end

