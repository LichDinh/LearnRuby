# Think like a programmer exercise.
# Exercise 6.4
# Find the sum of even numbers in an array

# Recursion method:
def recursiveSumOfEvenNumbers array
  return 0 if array.empty?
  lastNumb = array.pop
  sum = recursiveSumOfEvenNumbers array
  if lastNumb % 2 == 0 then sum += lastNumb end
  return sum
end

puts recursiveSumOfEvenNumbers [1,2,4,3,2,50,50]

# Iterative method:
def iterativeSumOfEvenNumbers array
  return 0 if array.empty?
  array.reduce(0) do |sum, n| # assign 0 for sum
    n.even? ? sum + n : sum # if n is even add n to sum, else return sum
  end
end

puts iterativeSumOfEvenNumbers [1,2,4,3,2,50,50]
