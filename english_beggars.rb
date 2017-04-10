def beggars(values, n)
  result =  Array.new 6, 0
  until values.length == 0 do
    if n == 0
      return result = []
      break
    else
      for i in 0...n
        values.length == 0 ? break : result[i] += values.shift
      end
    end
  end
  result.take n
end

puts beggars([1,2,3,4,5],2)
