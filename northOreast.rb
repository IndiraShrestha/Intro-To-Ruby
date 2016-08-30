#grabs a randome number
randomNum = rand(100)
puts "#{randomNum}"

puts "Please guess a number"

guess = gets.chomp.to_i

chance = 1

while chance < 5 
	if randomNum == guess 
		puts "Yayya....You guessed the correct number"
		return
	elsif guess < randomNum
		puts "The number you entered is less than the random Number. Please enter another number greater than that"	
		guess = gets.chomp.to_i
	else 
		puts "The number you entered is greater than the random Number. Please enter another number greater than that"	
		guess = gets.chomp.to_i	
	end
chance += 1 	
end	

puts "You are out of your chances"