options_array = ['rock', 'paper', 'sissor']


computer_choice = options_array.sample

puts computer_choice

loop do 
  puts "Please input either #{options_array.join(', ')}"

  user_pick = gets.chomp

  if options_array.include?(user_pick)
    break
  else
    puts ("Please enter a valid options!")  
  end  
end  