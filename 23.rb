def non_abundant_sums(limit)
	true_limit = 20161 #euler(28123) #wolfram(20161)
	non_abundant_sum = 0
	limit = true_limit if limit > true_limit
	abundants = get_abundants(limit)
	reduce_abundants = reduce_abundants(abundants, limit)
	non_abundants = (1..limit).to_a - reduce_abundants
	non_abundants.inject(:+)
end

def reduce_abundants(arr, limit)
	reduced_arr = []
	arr.each do |num1|
		arr.each do |num2|
			break if num1 + num2 > limit
			reduced_arr << num1 + num2
		end
	end
	reduced_arr
end

def get_abundants(limit)
	arr = []
	(1..limit).each do |num|
		arr << num if num < factors_sum(num)
	end
	arr
end

def factors_sum(num)
	factors_sum = 1
	(2..Math.sqrt(num)).each do |f|
		if num % f == 0
			opp = num / f
		opp == f ? factors_sum += (f) : factors_sum += (f + num / f)
		end
	end
	factors_sum
end

print non_abundant_sums(28123)
puts
