# find a pair in an array that: -it appears first(its second element's index is smallest of other pairs)
# and - its sum is equal an given integer

# version 1
def sum_pairs_v1 ints, s
  hash = {}
  index = []
  ints.each_with_index {|elem, i| hash[elem] = i }
  ints.each_with_index do |elem, i|
    if hash[s-elem] && hash[s-elem] != i
      hash[s-elem] > hash[elem] ? index << hash[s-elem] : index << hash[elem]
    end
  end

  return [s-ints[index.sort.first],ints[index.sort.first]] if index.any?
  nil
end

# version 2
def sum_pairs_v2 ints, s
  seen = {}
  for i in ints do
    return [s-i, i] if seen[s-i]
    seen[i] = true
  end
  nil
end

p sum_pairs_v2 [2,3,34,54,33,2,2,3,4,5,54,6,7,6,9,2,4,4,5,7,4,3,2,4,5,3,3,3,4,5], 11
