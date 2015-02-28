def factorial(num)
  return 0 if num == 0
  return 1 if num == 1
  return num * factorial(num - 1)
end

p factorial(0)