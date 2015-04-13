# Write fizzbuzz recursively

def fizz_buzz(input_array)
  while input_array.empty? == false
    num = input_array.delete_at(0)
    p "#{num}#{': fizz' if num%3==0}#{': buzz' if num%5==0 }#{': fizzbuzz' if num%15==0}"
    fizz_buzz(input_array)
  end
end

arr = (1..100).to_a
fizz_buzz(arr)