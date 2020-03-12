# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  # edge cases
  if (array1 == nil) || (array2 == nil)
    return (array1 == nil) && (array2 == nil)
  end
  if (array1 == []) && (array2 == [])
    return true
  end
  # count both and save to vars to compare
  array1_length = 0
  i1 = 0
  while array1[i1] != nil
    i1 += 1
    array1_length += 1
  end
  array2_length = 0
  i2 = 0
  while array2[i2] != nil
    i2 += 1
    array2_length += 1
  end
  if array1_length != array2_length
    return false
  end
  # loop through each index for both and compare
  i = 0
  array1_length.times do
    if array1[i] == array2[i]
      i += 1
    elsif array1[i] != array2[i]
      return false
    end
  end
  return true
end
