require "prime"

def prime_factorization(n)
  Prime.prime_division(n).flat_map { |factor, power| [factor] * power }
end

def prime_number key
  until key % 2 != 0 do
    key /= 2
  end
  i = 3
  a = []
  while i <= key
    if key % i == 0
      a << i
      key /= i
    else
      i += 2
    end
  end
  a.uniq.sort.last
end

def ascii_cipher message, key
  res = ""
  key >= 0 ? largest_prime = prime_factorization(key).last : largest_prime = -prime_factorization(key).last
  message.each_byte do |c|
    i = c + largest_prime

    if i < 0
      (i + 128) < 0 ? res << (i + 256) : res << (i + 128)
    elsif i > 127
      (i - 128) > 127 ? res << (i - 256) : res << (i - 128)
    else
      res << i
    end
  end
  res
end

def ascii_cipher_v2 message, key
  res = ""
  key >= 0 ? largest_prime = prime_factorization(key).last : largest_prime = -prime_factorization(key).last
  message.each_byte do |c|
    res << (c + largest_prime) % 128
  end
  res
end

puts ascii_cipher_v2 "holla ground &&& nest", -197
