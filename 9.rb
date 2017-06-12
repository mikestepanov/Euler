def special_pythagorean_triplet(product)
	for idx0 in (1..product/2)
	  for idx1 in (idx0..product/2)
		for idx2 in (idx1..product/2)
			if product == (idx0 + idx1 + idx2) && ((idx0 ** 2) + (idx1 ** 2) == (idx2 ** 2))
				return idx0 * idx1 * idx2
			end
		end
	  end
	end
	"Year 2050: we didn't find anything here."
end

print special_pythagorean_triplet(1000)