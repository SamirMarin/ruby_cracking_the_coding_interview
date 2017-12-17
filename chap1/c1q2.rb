def remove_duplicate(str)
  sorted_str = str.chars.sort.join
  back = 0
  front = 1
  while back < front do
    front = back + 1
    while sorted_str[front] do
      if sorted_str[back] == sorted_str[front]
        sorted_str[front] = ''
      else
        front += 1
      end
    end
    back += 1
  end
  sorted_str
end

puts remove_duplicate('ybbbbra')
puts remove_duplicate('abcdefghigklm')
