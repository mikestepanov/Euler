require 'prime'
def quadratic_primes(a_lim, b_lim) #n^2 + |a|n + b{|b|}
	max = 0
	product = 0
	(-a_lim..a_lim).each do |a|
		next if a.even?
		(1...b_lim).each do |b|
			n = 0 
			while ((n ** 2) + a * n + b).prime?
				n += 1
			end
			if n > max
				max = n
				product = a * b
			end
		end
	end
	product
end

print quadratic_primes(1000, 1000)