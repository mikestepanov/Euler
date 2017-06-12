def number_letter_counts(max)
	@singles = {"" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
									"six" => 6, "seven" => 7, "eight" => 8, "nine" => 9}
	@ten_to_twenty = {"eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14,
					"fifteen" => 15, "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19}
	@tens = {"ten" => 10, "twenty" => 20, "thirty" => 30, "forty" => 40, "fifty" => 50,
							"sixty" => 60, "seventy" => 70, "eighty" => 80, "ninety" => 90}
	total = 0
	(1..max).each do |num|
		temp = num / 1000
		total += thouthands(temp) if temp >= 1
		num = num % 1000
		next if num == 0
		total += "and".length if temp >= 1
		temp = num / 100
		total += hundreds(temp) if temp >= 1
		num = num % 100
		next if num == 0
		total += "and".length if temp >= 1
		total += under_hundred(num)
	end
	total
end

def thouthands(num)
	under_hundred(num) + "thousand".length
end

def hundreds(num)
	@singles.key(num).length + "hundred".length
end

def under_hundred(num)
	case num
		when 1..9
			@singles.key(num).length
		when 11..19
			@ten_to_twenty.key(num).length
		when 10..99
			@tens.key(num / 10 * 10).length + @singles.key(num % 10).length
		end
end

print number_letter_counts(1000)
puts
