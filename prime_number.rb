puts "Give me a range"
puts "Give me a first number"
first_number = gets.chomp
puts "Give me a last number"
last_number = gets.chomp

(first_number..last_number).each do |x|
	prime = true
	(first_number...x).each do |y|
		if x % y == 0
			prime = false
		end	
	end	
	puts x if prime
end	