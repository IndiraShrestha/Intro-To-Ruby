puts "Give me a starting year"
start_year = gets.chomp.to_i
puts "Give me a end year"
end_year = gets.chomp.to_i


(start_year..end_year).each do |year_range|
	if year_range % 4 == 0
		puts year_range
		
	end	
end	