def sum_square_difference(limit)
	sum_of_sqr = (1..limit).select{|i| i}.map{|i| i ** 2}.inject(:+)
	sqr_of_sum = (1..limit).select{|i| i}.reduce(:+) ** 2
	sqr_of_sum - sum_of_sqr
end

print sum_square_difference(100)