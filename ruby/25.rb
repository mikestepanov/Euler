def fibonacci_digits(n)
  return 0 if n == 1
  arr = [0, 1]
  while arr[-1].to_s.length < n
    arr << arr[-2] + arr[-1]
  end
  arr.size - 1
end

print fibonacci_digits(1000)
puts
