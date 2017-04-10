puts "Enter your number"
number = gets.chomp.to_i

first_numb = number/1000
rem1 = number - first_numb*1000

second_numb = rem1/100
rem2 = rem1 - second_numb*100

third_numb = rem2/10
fourth_numb = rem2 - third_numb*10

new_number = fourth_numb.to_s + third_numb.to_s + second_numb.to_s + first_numb.to_s

puts new_number.to_i
