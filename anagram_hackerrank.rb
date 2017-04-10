a = gets.strip.split('').sort
b = gets.strip.split('').sort

count = 0
until (a+b).empty? do
  if a.empty?
    count += b.length
    a = []
  elsif b.empty?
    count += a.length
    b = []
  elsif a[0] == b[0]
    a.shift
    b.shift
  elsif a[0] < b[0]
    a.shift
    count += 1
  else
    b.shift
    count += 1
  end
end
puts count
