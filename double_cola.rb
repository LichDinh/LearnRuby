def whoIsNext names, r
  if r < 5
    return names[r-1]
  else
    numb_of_clones = r*2/5
    if r % 5 == 0 && r % 2 != 0
      left_over = 5
    else
      left_over = r%5
    end
    index = left_over % numb_of_clones
    return names[index]
  end
end

puts whoIsNext ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"], 1000000
