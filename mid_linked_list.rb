# Get mid point of linked list in one pass:

def get_mid_length_of_linked_list(array)
  length = 0
  mid = 0
  while length < array.length
      length += 2
      mid += 1
  end
  puts "length: #{length}"
  puts "midpoint: #{mid}"
end

input = Array.new(rand(100))
get_mid_length_of_linked_list(input)