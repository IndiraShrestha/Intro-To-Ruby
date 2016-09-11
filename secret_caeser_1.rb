puts "What do you want to encrypt?"

encrypt_string = gets.chomp.to_s

puts "By how many letters do you want to encrypt?"

shift_by = gets.chomp.to_i

# to make an array of the string so that we could loop through each character and add the additional letter
array_encrypt = encrypt_string.split("")

# an empty array to add the encrypted characters 
final_encrypted_array = []

# looping through each character to 
array_encrypt.each do |x| 
	integer_char = x.ord
	if integer_char >= 65 || integer_char <=122
		encrypt_integer_char = integer_char + shift_by
		encrypt_char = encrypt_integer_char.chr
		#puts encrypt_char
		final_encrypted_array.push(encrypt_char)
	else 
		puts "Please enter a valid alphbetic character"
		return
	end	
end	

final_encrypted_string = final_encrypted_array.join
puts final_encrypted_string


# to decrypt
puts "Do you wish to decrypt? Y or N"
answer_to_decrypt = gets.chomp.upcase

if answer_to_decrypt == "Y"
	final_decrypted_array = []
	
	final_encrypted_array.each do |y|
		decrypt_char_integer = y.ord 
		decrypt_char = (decrypt_char_integer - shift_by).chr
		#puts decrypt_char
		final_decrypted_array.push(decrypt_char)
	end	

	final_decrypted_string = final_decrypted_array.join
	puts final_decrypted_string
else answer_to_decrypt == "N"
	return
end	






# .ord will give a number and we can add + 4 or any number 


