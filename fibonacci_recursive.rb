# Recursive method to print next number in n(supplied) fib sequence numbers: (i.e. if have 10 fib numbers, next number is 55)

def fib(n)
  return n if n <= 1
  fib(n-1) + fib(n-2)
end

p fib(1) == 1
p fib(0) == 0
p fib(10) == 55


# Iterative method to check if supplied number is part of fib sequence:

def is_fib?(num)
  arr = [0,1]
  i = 0
    until arr.last >= num
      arr << arr[i] + arr[i+1]
      i += 1
    end
  arr.last == num ? true:false
end

p is_fib?(6) == false
p is_fib?(5) == true