require 'prime'
def reciprocal_cycles(limit)
	arr = Prime.take_while{|i| i < limit} - [2,5] #2,5 do not have cycles
	longest = 0
	max = 0
	(arr).each do |denom|
		recurr = count_cycle(denom)
		if recurr > longest
			longest = recurr
			max = denom
		end
	end
	max
end

def count_cycle(denom)
	size = 1
	until (((10 ** size) - 1) % denom) == 0
		size += 1
	end
	size
end


print reciprocal_cycles(1000)
puts
