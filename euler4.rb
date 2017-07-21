palindroms = []
(100..999).each do |i|
	(100..999).each do |k|
		
		result = i*k
		puts "#{i}*#{k} = #{result}"
		if result.to_s == result.to_s.reverse
			palindroms.push(result)
		end
	end
end
palindroms.sort!
puts palindroms.last