# Think like a programmer exercise.
# Exercise 6.3

def numbsOfIntegerInArray array, n
  return 0 if array.empty?
  lastNumb =  array.pop
  count = numbsOfIntegerInArray(array, n)
  if lastNumb == n then count += 1 end
  count
end

puts numbsOfIntegerInArray [2,3,4,5,2,3,6,4,3,3], 3
