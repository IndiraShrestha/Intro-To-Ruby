def secret_caeser(string_to_encrypt_input, shift_by_input)
	# to make an array of the string so that we could loop through each character and add the additional letter
	array_encrypt_integer = string_to_encrypt_input.chars.map(&:ord) #scan method with regex could be used as well
	final_encrypted_array = [] 
	array_encrypt_integer.each do |x| # to loop through the array
		if x >= 65 || x <= 122  # filterout anything that is not an alphabets between ASCI 65 and 122
			individual_integer_shifted = x + shift_by_input # to increase the integer to encrypt the string
			individual_char_shifted = individual_integer_shifted.chr # to convert the ord/integer back to string
			final_encrypted_array.push(individual_char_shifted) # final array of character 
		else 
			puts "Please enter a valid alphbetic character" # msg to input a valid alphabet
			return
		end	# end of if statement to filterout anything that is not an alphabets between ASCI 65 and 122
	end	#end of loop for array to encrypt
	puts final_encrypted_array.join # to join the array back to string
	
	# Ask if the user wants to decrypt
	puts "Do you wish to decrypt? Y or N"
	answer_to_decrypt = gets.chomp.upcase
	# while answer_to_decrypt == "Y" || answer_to_decrypt == "N"
		if answer_to_decrypt == "Y" # condition if the user wishes to decrypt
		final_decrypted_array = []
			final_encrypted_array.each do |y|
				decrypt_char_integer = y.ord 
				decrypt_char = (decrypt_char_integer - shift_by_input).chr
				#puts decrypt_char
				final_decrypted_array.push(decrypt_char)
			end	
			puts final_decrypted_array.join	
		elsif answer_to_decrypt == "N" # condition if the answer is no
			return
		else 
		 	puts "Please enter Y or N only"
		 	answer_to_decrypt = gets.chomp.upcase	
		end	# end of if condition to decrypt
	# end #end of while statement 	
end	# end of secret_caeser method

puts "What do you want to encrypt?"
string_to_encrypt = gets.chomp.to_s # requests and convert the message into a string

puts "By how many digit do you want to shift?"
shift_by = gets.chomp.to_i # request to shift the character by how many position

puts secret_caeser(string_to_encrypt, shift_by) # run the method




