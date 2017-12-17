def replace_white_space(str)
  chars = []
  count = 0
  str.chars do |c|
    if c == ' '
      chars[count] = '%20'
    else
      chars[count] = c
    end
    count += 1
  end
  chars.join('')
end

puts replace_white_space('hello me you')

