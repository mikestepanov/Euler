def lattice_paths(facet)
	arr = create_pascal(facet)
	arr[arr.size /  2]
end

def create_pascal(num)
  pascal = [1]
  (num * 2).times do
    pascal = ([0] + pascal + [0]).each_cons(2).map{ |n| n.inject(:+) }
  end
  pascal
end

print lattice_paths(20)