# Think like a programmer exercise.
# Exercise 6.2

def oddOnesInBinary? array
  return 0 if array.length == 0
  lastElement = array.pop
  count = oddOnesInBinary?(array)
  if lastElement == 0
    count += 0
  end
  while lastElement != 0 do
    lastElement = lastElement & (lastElement-1)
    count += 1
  end
  return count
end

array = [0b1011,0b1000,0b1111,0b1010]
puts oddOnesInBinary?(array)
