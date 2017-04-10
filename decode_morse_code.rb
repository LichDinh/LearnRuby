def decodeMorse(morseCode)
  #your brilliant code here
  words = []
  words = morseCode.split("   ")
  result = []
  words.each do |chars|
    word = []
    str = ""
    word = chars.split(" ")
    word.each do |char|
      str << MORSE_CODE[char]
    end
    result << str
  end
  result.join(' ').strip
end
