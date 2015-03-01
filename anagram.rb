# Find if sentences are anagrams of one another
## REFACTOR

def anagram(*mult_strings)
  arr_of_hashes = hashify(*mult_strings) # return arr of
  sorted_hashes = sort_hash(arr_of_hashes)
  comparison_array = []

  sorted_hashes.all? do |hash|
    hash == sorted_hashes[0]
  end
end

def clean(*mult_strings)
  arrayed_strings = []
  mult_strings.each do |string|
    arr = string.downcase.split("").reject do |char|
      char == " " || char == "." || char == "?" || char == "!"
    end
    arrayed_strings << arr
  end
  arrayed_strings
end

def hashify(*mult_strings)
  arr = clean(*mult_strings)
  arr_of_hashes = []
  arr.each do |arr|
    hash = {}
    i = 0
    while i < arr.length
      if hash.keys.include?(arr[i])
        hash[arr[i]] += 1
      else
        hash[arr[i]] = 1
      end
    i += 1
    end
    arr_of_hashes << hash
  end
  arr_of_hashes
end

def sort_hash(arr_of_hashes)
  new_hash_arr = []
  arr_of_hashes.each do |hash|
    new_hash_arr << Hash[hash.sort_by{|k,v| k}]
  end
  new_hash_arr
end

p anagram('Eleven plus two!', 'Twelve plus one!', 'elewvt sulp eno!') == true
