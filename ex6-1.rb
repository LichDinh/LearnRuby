# Think like a programmer exercise.
# Exercise 6.1

def sumPositiveIntegers array
  return 0 if array.size == 0
  lastNumber = array.pop
  sum = sumPositiveIntegers(array)
  if lastNumber > 0
    sum += lastNumber
  end
  return sum
end

array = [2,4,-5,2,6,-8,10,-21,4,1,1,2,5,3]

puts sumPositiveIntegers array
