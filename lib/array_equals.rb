# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order

require "pry"
require "awesome_print"

def array_equals(array1, array2)
  if array1 == nil || array2 == nil
    unless array1 == nil && array2 == nil
      return false
    end
  elsif array1 == [] || array2 == []
    unless array1 == [] && array2 == []
      return false
    end
  elsif array1.size != array2.size
    return false
  elsif
    array1.each_with_index do |n,i|
      if n != array2[i]
        return false
      end
    end
  end
  return true
end
