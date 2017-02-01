

def add_array_lengths(array1, array2)
  return array1.length + array2.length
end

def array_sum(an_array)
  sum = 0
  for x in an_array
    sum = sum + x
  end
  return sum
end

def find_item?(array, item)
  for x in array
    if x == item
      return true
    else
      #do nothing
    end
  end
  # not found so return false
  return false
end

def find_first_key(input_hash)
  return input_hash.first.first  # first on a hash returns 2 element array, so first on that is the key!
end  

def gimme_capitals(a_hash)
  return_array = Array.new
  for x in a_hash
    # puts x
    # puts "==="
    # puts [x.first]
    return_array << a_hash[x.first][:capital]
  end
  return return_array
end
