# There are a bunch of numbers in an array. One of these numbers occurs once in the array. Other numbers occur at least twice. Write a function that returns the lonely integer.

def lonely_num(arr)
  hash = {}

  arr.each do |num|
    if hash.keys.include?(num)
      hash[num] += 1
    else
      hash[num] = 1
    end
  end

  hash.each do |k,v|
    return k if v == 1
  end

end

arr = [2,6,3,8,6,2,3]
p lonely_num(arr)