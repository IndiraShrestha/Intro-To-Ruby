puts "Say something to your grandma"
# ask user to input what they want to say to their grandma
user_input = gets.chomp
# count variable to keep track of the number of bye
count = 0
# while loop to 
while user_input != "BYE" || user_input == "BYE" && count < 3
	# if statement to check if the user_input not upper case 
	if user_input != user_input.upcase
		count = 0
		puts "HUH?!, SPEAK UP SONNY!"
		puts "Say something else to your grandma. If you want grandma to hear, shout it out!"
		user_input = gets.chomp
	# else if statement to check if the user input is upper case and not BYE	
	elsif user_input == user_input.upcase && user_input != "BYE"
		count = 0
		year = rand(1930..1981)
		puts "NO, NOT SINCE #{year}"	
		puts "Say something else to your grandma. If not shout 'BYE'"
		user_input = gets.chomp
	# else statement to check if user_input is BYE and start counting the number of times after	
	else user_input == "BYE"
		# increasing count by 1 to keep track of number of BYE so that it's less than 3
		count += 1
		puts "Say something else to your grandma. If not shout 'BYE'"
		user_input = gets.chomp
	end	# end of if statement		
end	# end of while statement
