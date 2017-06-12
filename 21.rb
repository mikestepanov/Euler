require 'prime'
def amicable_numbers(limit)
	arr = (2...limit).reject(&:prime?)
	amicables = []
	until arr.size == 0
		first = arr.pop
		second = factors_sum(first)
		temp = factors_sum(second)
		if first == temp && first != second
			amicables << [first + second]
			arr.delete(second)
		end
	end
	amicables.flatten.inject(:+)
end

def factors_sum(num)
	factors_sum = 1
	(2..Math.sqrt(num)).each do |f|
		factors_sum += (f + num / f) if num % f == 0
	end
	factors_sum
end

print amicable_numbers(10000)
