def string_unique(str)
  arr = []
  str.each_byte do |byte|
    return false if arr[byte]
    arr[byte] = true
  end
  true
end

puts string_unique('abcde')
puts string_unique('abcdd')
