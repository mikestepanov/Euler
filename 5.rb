def smallest_multiple(limit)
	mult = 1
	arr = (2..limit).select{|i| i}
	arr.each do |ii|
		if mult % ii != 0
			arr.each do |n|
				if ii % n == 0		
					while ii % n == 0 && ii != n
						ii /= n
					end
					mult *= ii
					break
				end
			end
		end
	end
	mult
end

print smallest_multiple(20)