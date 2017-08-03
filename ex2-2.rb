# Think like a programmer exercise.
# Exercise 2.2

for upperRow in 1..4
  for k in 1..(4-upperRow)
    print " "
  end
  for l in 1..(upperRow*2)
    print "#"
  end
  print "\n"
end

for row in 0..3
  if row > 0
    for i in 1..row
      print " "
    end
  end
  for j in 1..(8-row*2)
    print "#"
  end
  print "\n"
end
