
t = gets.strip.to_i

for a0 in (0..t-1)
  i = 0
  expression = gets.strip.split('')
  if expression.empty?
    puts "YES"
    
  elsif expression.length.odd?
    puts "NO"
    
  elsif expression.length == 2
  	if (expression[0] == "[" && expression[1] == "]") || (expression[0] == "{" && expression[1] == "}") || (expression[0] == "(" && expression[1] == ")")
  		puts "YES"
  	else
  		puts "NO"
  	end
  	
  else
  
    while i < expression.length/2 do
      if expression[i] == "{" && expression.pop == "}"
        i += 1
      elsif expression[i] == "[" && expression.pop == "]"
        i += 1
      elsif expression[i] == "(" && expression.pop == ")"
        i += 1
      else
        puts "NO"
        break
      end
    end
    
    if i == expression.length/2
		  puts "YES"
		end
		
  end
end

