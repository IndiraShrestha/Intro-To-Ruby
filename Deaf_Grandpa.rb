puts "Say something to your grandma"
# ask user to input what they want to say to their grandma
user_input = gets.chomp 

# looping the user_input until user_input is in all CAPS
if user_input != user_input.upcase 
	puts "HUH?!, SPEAK UP SONNY!"
	puts "Say something else to your grandma. If you want grandma to hear, shout it out!"
	user_input = gets.chomp

	until user_input == user_input.upcase 
		puts "HUH?!, SPEAK UP SONNY!"
		puts "Say something else to your grandma. If you want grandma to hear, shout it out!"
		# request another user input
		user_input = gets.chomp
	
		#check if user_input is in all CAPS	
		if user_input == user_input.upcase 
			year = rand(1930..1981)
			puts "NO, NOT SINCE #{year}"
		end	

		puts "Say something else to your grandma. If not shout 'BYE'"
		user_input = gets.chomp
		#check if the user_input shouted BYE in all CAPS
		if user_input == "BYE"
			count = 1
			
			puts "BYE!! See you soon Sonny!!"
		end	
	end	
elsif user_input == user_input.upcase && user_input != "BYE"
	year = rand(1930..1981)
	puts "Line 47.NO, NOT SINCE #{year}"	

	puts "Say something else to your grandma. If not shout 'BYE'"
	user_input = gets.chomp

	until user_input == user_input.upcase 
		puts "HUH?!, SPEAK UP SONNY!"
		puts "Line 54.Say something else to your grandma. If you want grandma to hear, shout it out!"
		# request another user input
		user_input = gets.chomp
		#check if user_input is in all CAPS
		if user_input == user_input.upcase && user_input != "BYE"
			year = rand(1930..1981)
			puts "NO, NOT SINCE #{year}"
		end	

		puts "Say something else to your grandma. If not shout 'BYE'"
		user_input = gets.chomp

		#If you shout BYE to grandma 
		if user_input == "BYE"
			puts "You shouted BYE only once. You should shout it out atleast 2 more times"
			count = 1
			# to count that user say bye atleast 3 times
			while count < 3 # This could be a function but need to ask David
				user_input = gets.chomp
				count +=1
					if user_input == "BYE"
						puts "You shouted BYE twice. You should shout it out atleast 1 more times"
						user_input = gets.chomp
						count +=1
					else 
						puts "You need to shout BYE Three times in a row"
						user_input = gets.chomp	
					end	# end of if you shout BYE to grandma
				puts "BYE!! See you soon Sonny!!"	
			end	# end of while statement to check count 
		end	# end of if you shout BYE to grandma
	end	
# If you should BYE to grandma 	
else user_input == "BYE"
	puts "You shouted BYE only once. You should shout it out atleast 2 more times"
	count = 1
	
	# to count that user say bye atleast 3 times
	while count < 3
		user_input = gets.chomp
		count +=1
			if user_input == "BYE"
				puts "You shouted BYE twice. You should shout it out atleast 1 more times"
				user_input = gets.chomp
				count +=1
			else 
				puts "You need to shout BYE Three times in a row"
				user_input = gets.chomp	
			end	# end of if you shout BYE to grandma
		puts "BYE!! See you soon Sonny!!"	
	end	# end of while statement to check count 
end	# end of else statement if you shout BYE to grandma	



