def distinct_powers(low_lim, up_lim)
	arr = []
	(low_lim..up_lim).each do |a|
		(low_lim..up_lim).each do |b|
			arr << a ** b
		end
	end
	arr.uniq.size
end

print distinct_powers(2, 100)
