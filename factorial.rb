n = gets.chomp.to_i
fac = 1
if n == 0
	puts fac = 0
elsif n >= 1	
	while n >= 1
		fac = fac*n
		n = n-1
	end
	puts fac
end

	
