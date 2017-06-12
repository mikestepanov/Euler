require "prime"
def nth_prime(nth)
  Prime.take(nth).last
end

print nth_prime(10001)
puts
