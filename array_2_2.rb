a = [1,2,3,4,5]
b = Array.new
new_i = 0
b[new_i] = a[a.length-1]
i = 0
while new_i <= (a.length-2)
	new_i = new_i + 1
	b[new_i] = a[i]
	i = i+1
end
puts b

