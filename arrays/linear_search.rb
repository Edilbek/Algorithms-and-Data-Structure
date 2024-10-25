def linear_search(array, search_value)
  # We iterate thorugh every element in the array
  array.each_with_index do |element, index|
    # If we find the value we're looking for, we return its index
    return index if element == search_value

    # If we reach the element that is greater than the value
    # we're looking for, we can exit the loop early
    break if element > search_value
  end

  # Return nil no search_value in the array
  nil
end

p linear_search([3, 17, 75, 80, 202], 22)
