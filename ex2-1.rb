# Think like a programmer exercise.
# Exercise 2.1

for row in 0..3
  if row > 0
    for i in 1..row
      print " "
    end
  end
  for j in 1..(8-row*2)
    print 'a'
  end
  print "\n"
end
