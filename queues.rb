a = gets.strip.to_i
arr = Array.new
for a0 in (0..a-1) do
  line = gets.strip.split
  i = line[0].to_i
  j = line[1].to_i
  if i == 1
    arr.push(j)
  elsif i == 2
    arr.shift
  elsif i == 3
    puts arr[0]
  else
    puts "Invalid number"
    break
  end  
end
