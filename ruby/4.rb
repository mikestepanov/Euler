def largest_palindrome_product(size)
	arr = []
	3.times {arr << ("9" * size).to_i}
	arr << ("1" + "0" * (size - 1)).to_i
	ans = []
	while arr[1] > 0
		temp = (arr[0] * arr[1])
		ans << temp if temp == temp.to_s.chars.reverse.join.to_i
		arr[0] -= 1
		if arr[0] == arr[3]
			arr[0] = arr[2]
			arr[1] -=1
		end
	end
	ans.max
end

print largest_palindrome_product(3)
puts
