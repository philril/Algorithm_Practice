# Refactor!
# O(n) time

def common_divisor(x,y)
  x_ints = return_ints_of_array((1..x).to_a)
  y_ints = return_ints_of_array((1..y).to_a)

  return 1 if (x_ints & y_ints).empty?
  return (x_ints & y_ints).max if (x_ints & y_ints).empty? != true

end

def return_ints_of_array(input_array)
  array_ints = Array.new
  i = input_array.length - 1
  while i>=0
    num_to_check = ((input_array.last).to_f/(input_array[i]).to_f)
    if num_to_check % 1 == 0
      if num_to_check != input_array[i]
        array_ints << input_array[i]
      end
    end
    i-=1
  end
  return array_ints
end

p common_divisor(30,6) == 6
p common_divisor(8,9) == 1
p common_divisor(1,1) == 1
p common_divisor(3245, 854674) == 59