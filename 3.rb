require 'prime'
def largest_prime_factor(target)
	arr = []
	idx0 = 2
	while idx0 <= target
		if target % idx0 == 0
			target /= idx0
			arr << idx0 if idx0.prime?
		end
		idx0 += 1
	end
	arr.empty? ? "Year 2050: we found out that our target is prime, how sad." : arr.last
end

print largest_prime_factor(600851475143)
puts
