def anagram(str1, str2)
  count1 = 0
  str1.bytes do |byte|
    count1 += byte
  end

  count2 = 0
  str2.bytes do |byte|
    count2 += byte
  end
  count1 == count2
end

puts anagram('abc', 'bcd')
puts anagram('qwert', 'tqerw')
