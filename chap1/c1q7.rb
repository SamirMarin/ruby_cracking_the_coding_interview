def set_col_row_zero(arr)
  size = arr.length
  i = 0
  j = 0
  zero_index = []

  while i < size do
    while j < size do
      num =  arr[i][j]
      if num == 0
        zero_index.push([i, j])
      end
      j += 1
    end
    i += 1
  end

  zero_index.each do |index|
    zero_row(index[0], arr)
    zero_col(index[1], arr)
  end

  arr
end

def zero_row(i, arr)
  j = 0

  while j < arr.length do
    arr[i][j] = 0
    j += 1
  end

end

def zero_col(j, arr)
  i = 0

  while i < arr.length do
    arr[i][j] = 0
    i += 1
  end
end

puts set_col_row_zero([[1, 2, 3, 0], [1, 2, 3, 4], [1,2,3,4], [1, 2, 3, 4]]).to_s
