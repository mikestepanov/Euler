def counting_sundays(start, final)
	sundays = 0
	@weekday = 0
	idx_date = [1, 1900]
	while idx_date[1] <= final
		if idx_date[1] >= start
			sundays += 1 if @weekday == 6
		end
		idx_date = add_month(idx_date)
	end
	sundays
end

def add_month(date)
	month = date[0]
	year = date[1]
	case month
		when 1,3,5,7,8,10,12
			@weekday = (@weekday + 3) % 7 
		when 4,6,9,11
			@weekday = (@weekday + 2) % 7 
		when 2
			if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
				@weekday = (@weekday + 1) % 7 
			end
	end
	month += 1
	if month > 12
		month = 1
		year += 1
	end
	[month, year]
end

print counting_sundays(1901, 2000)