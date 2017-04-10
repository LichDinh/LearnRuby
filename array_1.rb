i = 0
arr = Array.new
while i <= 10
	num = gets.chomp.to_i
	arr[i] = num
	i = i+1
end
puts "#{arr}"
