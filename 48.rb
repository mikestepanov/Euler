def self_powers(n, digits) 
	sum = 0
	(1..n).each {|n| sum += n ** n}
	sum.to_s.reverse[0, (digits)].reverse
end

print self_powers(1000, 10)