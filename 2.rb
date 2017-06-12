def fibonacci(limit)
	arr = [1,2]
	while arr.last < limit
		arr << (arr[-1] + arr[-2])
	end
	arr.select{|num| num.even?}.inject(:+)
end

print fibonacci(4_000_000)