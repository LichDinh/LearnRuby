# find the int that appears odd times in an array
# my solution
def find_it_v1 seq
  a = seq.uniq
  a.each do |c|
    count = 0
    for i in 0..seq.length
      count += 1 if c == seq[i]
    end
    return c if count.odd?
  end
end

# v2
def find_it_v2 seq
  # detect: return element if block is true.
  seq.detect { |c| seq.count(c).odd? }
end

# v3
def find_it_v3 seq
  # ^: XOR operator
  # XOR each pair of elements, return the rest because even times elements return 0 after XOR.
  seq.reduce :^
end

puts find_it_v3 [2,2,32,4,5,2,4,5,7,7,23,23,4,4,5,5,32]
