def stock_picker(array)
  # Looks through half of the days that can be bought
  last_buy = array.length / 2

  # Retrieves the smallest number in the array that can be bought based on
  # the day
  lowest_buy = array[0]
  lowest_index = 0
  
  # Goes through each value in the array to find the lowest value to buy
  for i in 0..(last_buy - 1)

    # Retrieve lowest_value and the index
    if array[i] < lowest_buy
      lowest_buy = array[i]
      lowest_index = i
    end
    
  end

  # Retrieves the highest number in the array that can be bought and 
  highest_sell = array[last_buy]
  highest_index = last_buy

  # Goes through the remaining days for the highest profit when selling
  for j in last_buy..(array.length - 1)

    # Searches for the highest value in the array and its index
    if array[j] > highest_sell
      highest_sell = array[j]
      highest_index = j
    end

  end

  return [lowest_index, highest_index]
end