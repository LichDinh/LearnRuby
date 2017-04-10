# Codewars 7kyu
def battle(x, y)
  a = ('A'..'Z').to_a
  b = (1..26).to_a
  c = a.zip(b).to_h
  sum_x = 0
  x.each_char do |char|
    next if /[[:upper:]]/.match(char).nil?
    sum_x += c[char]
  end
  sum_y = 0
  y.each_char do |char|
    next if /[[:upper:]]/.match(char).nil?
    sum_y += c[char]
  end
  if sum_x > sum_y
    return x
  elsif sum_x < sum_y
    return y
  else
    return "Tie!"
  end
end

puts battle("ONE", "TWO")
