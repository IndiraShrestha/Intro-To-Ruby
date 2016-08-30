def birth_year(name_input, age_input)
	# today = 2016
	year_date = Time.now.year - age_input
	puts name_input.to_s + " was born on " + year_date.to_s
end	

puts "Please enter your name"
name = gets.chomp
puts "Please enter your age"
age = gets.chomp.to_i

puts birth_year(name, age)


