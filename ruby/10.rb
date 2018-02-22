require 'prime'
def summation_of_primes (limit)
	Prime.take_while{|i| i < limit}.reduce(:+)
end

print summation_of_primes(2_000_000)
puts
