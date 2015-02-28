# Change numbers divisible by 3 to "fizz," numbers divisible by 5 to "buzz," and numbers divisible by both 3 and 5 to "fizzbuzz"

def fizz_buzz
  arr = (1..100).to_a
  arr.map! do |num|
    case
      when num % 3 == 0
        num = "fizz"
      when num % 5 == 0
        num = "buzz"
      when num % 3 == 0 && num % 5 == 0
        num = "fizzbuzz"
      else num = num
    end
  end
  arr
end

puts fizz_buzz
