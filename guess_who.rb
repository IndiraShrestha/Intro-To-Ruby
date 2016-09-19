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

  def guilty_suspect_gender
    gender = @guilty_suspect[1].upcase
  end  

  def guilty_suspect_color
    color = @guilty_suspect[2].upcase
  end 


  def show_list_of_suspects
    puts @suspects.suspects_list
  end

  def delete_not_matched_suspects(attribute) #method to delete the suspects with matched attribute.
      # @suspects.suspects_list.each do |list|
      #   if list[2].include?(attribute)
      #     @suspects.suspects_list.delete(list)
      #   elsif list[1].include?(attribute)
      #     @suspects.suspects_list.delete(list)  
      #   else 
      #     puts "---"  
      #   end   
      # end
      @suspects.suspects_list.delete_if do |list|
        list[1].include?(attribute) || list[2].include?(attribute)
      end  
  end  

  def remaining_suspects
    suspects_left = @suspects.suspects_list
  end  

end # end of Guess_Game class

### ------------------------------------------------------------------------------ ###

# #have a guess object/class which carries the methods match attribute and delete suspect from the suspects_list attribute

guess = 0
guess_who = Guess_Game.new
guess_who.show_guilty_suspect
# guess_who.show_list_of_suspects
puts "Please enter an gender/color attribute?"#ask user to input the attribute 

while guess <= 3
  attribute = gets.chomp
  if attribute.upcase != guess_who.guilty_suspect_color || attribute.upcase != guess_who.guilty_suspect_gender  #if the attribute matches the suspect then tell the user he is closer or else delete the suspects whoes attributes doesn't match
    guess_who.delete_not_matched_suspects(attribute)
    puts guess_who.remaining_suspects
  else   
    puts "Please enter a valid gender or color?"
  end  
  guess += 1
end





