# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8
def fibonacci(n)
  if n == nil || n < 0
    return raise ArgumentError
  end
  if n == 0
    return n
  end
  arr = [1,1]
  y = 1
  x = 1
  until y == n do
    x = arr[0] + arr[1]
    arr[0] = arr[1]
    arr[1] = x
    y += 1
  end
  return arr[0]
end
