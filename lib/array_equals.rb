# Determines if the two input arrays have the same count of elements
# and the same integer values in the same exact order
def array_equals(array1, array2)
  if array1 == nil && array2 == nil 
    return true 
  elsif array1 == nil || array2 == nil 
    return false
  else
    if array1.length == array2.length #if neither are nil, check their length
      array1.zip(array2).each do |x, y| #if the length is the same, iterate thru both arrays
        if x != y 
          return false
        end
      end
      return true
    else 
      return false
    end
  end
end 
