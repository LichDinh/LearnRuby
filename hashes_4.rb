a = "MISSISSIPPI"
i = 0
j = 1
b = Hash.new
count = 0
while i < a.length
	while j <= a.length
		if a[i] == a[j]
			count += 1
		end
		j += 1
	end
	b = b.merge({ a[i] => count })
	i += 1
	j = 1
	count = 0
end

puts b 
