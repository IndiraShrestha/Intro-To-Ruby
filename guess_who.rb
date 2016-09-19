require 'csv'
### ------------------------------------------------------------------------------------------- ###
class Suspects

  attr_reader :suspects_list

  def initialize
    @suspects_list = CSV.read('Suspects_file.csv')
  end  

  # def show_list_of_suspects #this should show the first name of the suspects
  #   puts @suspects_list
  # end  
end  # end of Suspects class
 
class Guess_Game 
  
  attr_reader :guilty_suspect

  def initialize
    @suspects = Suspects.new 
    @guilty_suspect = @suspects.suspects_list.sample #How do i initialize the guilty suspect
  end  

  def show_guilty_suspect
    puts @guilty_suspect
  end 

  def show_list_of_suspects
    puts @suspects.suspects_list
  end

  def delete_not_matched_suspects(attribute) #method to delete the suspects with matched attribute.
      @suspects.suspects_list.each do |list|
        if !list.include?(attribute)
          @suspects.suspects_list.delete(list)  
        end   
      end
  end  

  def remaining_suspects
    suspects_left = @suspects.suspects_list
  end  

end # end of Guess_Game class

gender_color = ["BOY", "GIRL", "BLACK", "WHITE"]

### ------------------------------------------------------------------------------ ###

# #have a guess object/class which carries the methods match attribute and delete suspect from the suspects_list attribute

guess = 0
guess_who = Guess_Game.new
guess_who.show_guilty_suspect
guess_who.show_list_of_suspects
puts "Please enter an gender/color attribute?"#ask user to input the attribute 

  attribute = gets.chomp
  if gender_color.include?(attribute.upcase)  #if the attribute matches the suspect then tell the user he is closer or else delete the suspects whoes attributes doesn't match
    guess_who.delete_not_matched_suspects(attribute)
    puts guess_who.remaining_suspects
  else   
    puts "Please enter a valid gender or color?"
  end  






