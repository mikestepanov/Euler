require 'prime'
def highly_divisible_triangular_number(min_div)
	first = prime_factorization(min_div)
	triangle = base_triangle(first)
	base = triangle[1]
	triangle = triangle[0]
	while true
		cap = Math.sqrt(triangle).to_i
		return triangle if (1..cap).count{|n| triangle % n == 0} * 2 > min_div
		base += 1
		triangle = triangle + base
	end
end

#Thank you, Euclid of Alexandria. 
def prime_factorization(min_div)
	list = []
	min_div.prime_division.each{|arr| arr[1].times {list << arr[0]}}
	powers = list.reverse.map{|i| i - 1}
	list = Prime.take(list.size)
	list.map.with_index{|_, idx| list[idx] ** powers[idx]}.inject(:*)
end

def base_triangle(first)
	triangle = 1
	plus = 1
	while triangle <= first
		plus += 1
		triangle = triangle + plus
	end
	[triangle, plus]
end

print highly_divisible_triangular_number(500)