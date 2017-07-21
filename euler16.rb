digit = 2**1000
digit_as_array = digit.to_s.split('').map(&:to_i)
sum = 0
(0..digit_as_array.length-1).each do |i|
	sum = sum + digit_as_array[i]
	puts sum
end
puts "final: #{sum}"