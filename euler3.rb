number = 600851475143
factors = [1]
largest_prime_factor = []
potentially_prime = [0]
not_prime = []

#finding factors
(2..number/2).each do |i|
	if number%i == 0
#		puts "#{i} is a factor of #{number}"
		if factors[factors.length-1] != i &&  factors[factors.length-1] != number/factors.last
			factors.push(i)
			factors.push(number/factors.last)
		else 
			break
		end
	end
end
factors.sort!
factors.reverse
#puts factors



#prime check on factors

(factors.length-1).downto(0) do |l|
	(2..factors[l]/2).each do |k|
		if factors[l+1] == potentially_prime.last
#			puts potentially_prime.last
			largest_prime_factor.push(potentially_prime.last)
#			puts "found a prime!#{potentially_prime.last}"
			break
		end
		if factors[l]%k==0
			not_prime.push(factors[l])
			if potentially_prime.last == factors[l]
				potentially_prime.pop
			end	
#			puts "#{factors[l]} is not a prime"
			break
		elsif potentially_prime.last != factors[l] && not_prime.last != factors[l]
			potentially_prime.push(factors[l])
#			puts "#{factors[l]} is potentially a prime"
		end
	end
end	
	
potentially_prime.sort!
largest_prime_factor = potentially_prime.last
puts "#{largest_prime_factor} is the largest prime factor of #{number}"
