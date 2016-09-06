def secret_caeser(string_to_encrypt_input, shift_by_input)
	# to make an array of the string so that we could loop through each character and add the additional letter
	array_encrypt_integer = string_to_encrypt_input.chars.map(&:ord)
	final_array = []
	array_encrypt_integer.each do |x|
		if x <= 65 || x >= 122  
			individual_integer_shifted = x + shift_by_input
			individual_char_shifted = individual_integer_shifted.chr 
			final_array.push(individual_char_shifted)
		else 
			puts "Please enter a valid alphbetic character"
			return
		end	
	end	
	puts final_array.join
end	

puts "What do you want to encrypt?"
string_to_encrypt = gets.chomp.to_s

puts "By how many digit do you want to shift?"
shift_by = gets.chomp.to_i

puts secret_caeser(string_to_encrypt, shift_by)




