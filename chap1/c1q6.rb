def flip_ninty(arr)
  n = arr.length
  layer = 0
  final_layer = n/2

  while layer < final_layer do
    j = layer
    first = layer
    last = n - 1 - layer

    while j < last
      offset = j - first
      top = arr[first][j]

      #left top
      arr[first][j]  = arr[last - offset][first]

      #left bottom
      arr[last - offset][first] = arr[last][last - offset]

      #right bottom 
      #
      arr[last][last - offset] = arr[j][last]
      #right top
      arr[j][last] = top

      j += 1
    end
    layer += 1
  end
  arr
end

puts flip_ninty([[1, 2], [3, 4]]).to_s
