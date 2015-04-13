# Change numbers divisible by 3 to "fizz," numbers divisible by 5 to "buzz," and numbers divisible by both 3 and 5 to "fizzbuzz"

def fizz_buzz(input_array)
  input_array.map! do |num|
    case
    when num % 3 == 0 then num = "fizz"
    when num % 5 == 0 then num = "buzz"
    when num % 3 == 0 && num % 5 == 0 then num = "fizzbuzz"
    else num = num
    end
  end
  input_array
end

arr = (1..100).to_a
puts fizz_buzz(arr)
