def bubble_sort(array)
  # Indicate the positions left to sort
  sort_left = array.length - 1

  # Indicates all the positions left to sort
  for i in sort_left.downto(0)
    # To allow swapping from pointer position to the current j index
    pointer = 0

    # Goes through all the elements except for the first one to allow swapping
    for j in 1..i

      # Swaps once indicates that the array positions are not sorted
      if array[pointer] >= array[j]
        temp = array[pointer]
        array[pointer] = array[j]
        array[j] = temp
      end

      pointer += 1
    end

    sort_left -= 1
  end

  return array
end