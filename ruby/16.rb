def power_digit_sum(power)
	(2 ** power).to_s.chars.map(&:to_i).inject(:+)
end

print power_digit_sum(1000)
puts
