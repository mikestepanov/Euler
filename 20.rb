def factorial_digit_sum(num)
	(1..num).reduce(:*).to_s.chars.map(&:to_i).inject(:+)
end

print factorial_digit_sum(100)