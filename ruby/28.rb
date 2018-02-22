def number_spiral_diagonals(limit)
	sum = 1
	layer = 1
	start = 1
	while layer <= (limit / 2)
		4.times do
			start += layer * 2
			sum += start
		end
		layer += 1
	end
	sum
end

print number_spiral_diagonals(1001)
puts
