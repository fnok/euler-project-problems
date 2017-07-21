sum_prime = 0
not_prime = []
prime = [2,3]

(2..2000000).each do |i|
	(2..i/2).each do |k|
#		puts "#{i}/#{k}"
		if i%20000 == 0
			puts "#{i}"
		end
		if i == not_prime.last
			break
		elsif i%k == 0
			not_prime.push(i)
#			puts "#{i} is not a prime!"
			if i == prime.last
				prime.pop
			end
		elsif i != prime.last 
			prime.push(i)
		end
		
	end
end

puts prime.last

(0..prime.length-1).each do |l|

	sum_prime = sum_prime + prime[l]
end
puts sum_prime