a = gets.strip.to_i
b = gets.strip.to_i
n = gets.strip.to_i
arr = [a, b]
for i in (2..n-1) do
  arr[i] = arr[i-2] + (arr[i-1])**2
end
puts arr[n-1]
