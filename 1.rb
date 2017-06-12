def multiples_of_3_or_5(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

print multiples_of_3_or_5(1000)
puts
