def secret_caeser(string_to_encrypt_input, shift_by_input)
	# to make an array of the string so that we could loop through each character and add the additional letter
	array_encrypt_integer = string_to_encrypt_input.chars.map(&:ord) #scan method with regex could be used as well
	final_array = [] 
	array_encrypt_integer.each do |x| # to loop through the array
		if x <= 65 || x >= 122  # filterout anything that is not an alphabets between ASCI 65 and 122
			individual_integer_shifted = x + shift_by_input # to increase the integer to encrypt the string
			individual_char_shifted = individual_integer_shifted.chr # to convert the ord/integer back to string
			final_array.push(individual_char_shifted) # final array of character 
		else 
			puts "Please enter a valid alphbetic character" # msg to input a valid alphabet
			return
		end	
	end	
	puts final_array.join # to join the array back to string
end	

puts "What do you want to encrypt?"
string_to_encrypt = gets.chomp.to_s # requests and convert the message into a string

puts "By how many digit do you want to shift?"
shift_by = gets.chomp.to_i # request to shift the character by how many position

puts secret_caeser(string_to_encrypt, shift_by) # run the method




