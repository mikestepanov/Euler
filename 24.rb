def lexicographic_permutations(nth_perm, arr)
	answer = []
	factorial = (1..arr.size).reduce(:*)
	idx0 = arr.size
	base = 0
	while idx0 > 0
		factorial /= idx0
		permutes = nth_perm - base
		count = 0
		idx1 = 0
		while count < permutes
			count += factorial
			idx1 += 1
		end
		idx1 -= 1
		base += factorial * idx1
		answer << arr[idx1]
		arr = arr.select{|i| i != arr[idx1]}
		idx0 -= 1
	end
	answer.join
end

print lexicographic_permutations(1_000_000, [0,1,2,3,4,5,6,7,8,9])
puts
