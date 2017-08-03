# count the sum of an integer array by recursion

def arraySumRecursion array, size
  return 0 if size == 0
  lastNumber = array.pop # or array[size-1]
  otherNumber = arraySumRecursion(array, size-1)
  sum = lastNumber + otherNumber
end

array = [1,2,3,4,5]
puts arraySumRecursion array, 5
