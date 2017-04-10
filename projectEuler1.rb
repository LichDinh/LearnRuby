def find_multiple
  sum = 3 + 5
  for i in 6...1000
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  sum
end

puts find_multiple
