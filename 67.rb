def maximum_path_sum(path)
	str = File.read(path)
	arr = str.split("\n").map{|lane| lane.split(" ").map(&:to_i)}
	idx0 = arr.size - 2
	while idx0 >= 0
		arr[idx0].map!.with_index do |num, idx1|
			num += arr[idx0 + 1][idx1..idx1 + 1].max
		end
		idx0 -= 1
	end
	arr.first.first
end

print maximum_path_sum("txt_files/67.txt")