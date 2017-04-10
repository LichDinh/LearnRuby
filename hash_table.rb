m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip.split(' ')
ransom = gets.strip.split(' ')
i = 0
j = 0
ransom_hash = Hash.new 
while j <= n
  ransom_hash[ransom[j]] = ransom[j]
  j += 1
end

puts hash = ransom_hash.compact
mag_hash = {}
while  i <= m
	if hash.any? {magazine[i]}
		mag_hash[magazine[i]] = hash[magazine[i]]
	end
	i += 1
end

if mag_hash.compact == hash
	puts "Yes"
else
	puts "Wrong"
end
