puts "Say something to your grandma"
# ask user to input what they want to say to their grandma
user_input = gets.chomp 

while user_input != "BYE"
	if user_input != user_input.upcase
		puts "HUH?!, SPEAK UP SONNY!"
		puts "Say something else to your grandma. If you want grandma to hear, shout it out!"
		user_input = gets.chomp
	else user_input == user_input.upcase
		year = rand(1930..1981)
		puts "NO, NOT SINCE #{year}"	

		puts "Say something else to your grandma. If not shout 'BYE'"
		user_input = gets.chomp
	end			
end	