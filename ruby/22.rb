def names_scores(path)
	str = File.read(path)
	arr = str.delete("\"").split(",").sort
	arr.map!.with_index(1) do |name, idx|
		name = name.upcase
		asci_total = 0
		name.chars.each do |chr|
			asci_total += (chr.ord - "A".ord + 1)
		end
		asci_total * idx
	end
	arr.inject(:+)
end

print names_scores("../txt_files/22.txt")
puts
