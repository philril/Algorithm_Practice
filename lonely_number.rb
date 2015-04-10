# There are a bunch of numbers in an array. One of these numbers occurs once in the array. Other numbers occur at least twice. Write a function that returns the lonely integer.

# def lonely_num(arr)
#   hash = {}

#   arr.each do |num|
#     if hash[num]
#       hash[num] += 1
#     else
#       hash[num] = 1
#     end
#   end

#   return hash.key(hash.values.min)

# end

# REFACTOR:

def lonely_num(input_array)
  hash_map = input_array.inject(Hash.new(0)) do |hash, val|
    hash[val] += 1
    hash
  end
  return hash_map.key(hash_map.values.min)
end

arr = [2,6,3,8,6,2,3]
p lonely_num(arr)