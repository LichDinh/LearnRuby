i = 0
arr = Array.new
while i <= 10
	num = gets.chomp.to_i
	arr[i] = num
	i = i+1
end
puts "#{arr}"
puts "Enter a number"
n = gets.chomp.to_i
i = 0
while i <= 10
	if arr[i] == n
		puts "This number is in array"
		break
	else
		i = i+1
	end
end
