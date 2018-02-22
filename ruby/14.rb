def longest_collatz_sequence(limit)
	max = 0
	num = 0
	(limit / 2...limit).each do |i|
		next if i.even?
		sequence = weave_sequence(i)
		if sequence > max
			max = sequence
			num = i
		end
	end
	num
end

def weave_sequence(num)
	seq_length = 1
	until num == 1
		if num.odd?
			num = 3 * num + 1
		else
			num /= 2
		end
		seq_length += 1
	end
	seq_length
end

print longest_collatz_sequence(1_000_000)
puts
