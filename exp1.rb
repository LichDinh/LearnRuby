a = gets.strip.split('')
i = 0
while i < a.length/2
	if a[i] == "[" && a.pop == "]"
		i += 1
	else
		puts "NO"
		break
	end
end

if i == a.length/2
	puts "YES"
end
