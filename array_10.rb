a = [1,2,3,3,4,3,5,6,8,5]
i = 0
j = 1
while i < 10
	j = i+1
	while j < 10
	 if a[i] == a[j]
	 	a.delete_at(j)
	 end
	 j = j+1
	end
	i = i+1
end
puts a
	 	
