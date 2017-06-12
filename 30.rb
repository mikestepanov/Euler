def digit_fifth_powers(power)
	sum = 0
	limit = (9 ** power).to_s.size * (9 ** power)
	(2..limit).each do |num|
		sum += num if num == num.to_s.chars.map{|i| i.to_i ** power}.inject(:+)
	end
	sum
end

print digit_fifth_powers(5)
puts
