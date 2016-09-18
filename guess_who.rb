require 'csv'
class Suspects

  def initialize
    @suspects_csv = csv.read('filename.csv')
  end  

  #isn't it the same if i just put @suspects_csv but maybe i can format this one....
  def show_list_of_suspects #this should show the first name of the suspects
    suspects_list = [] #maybe this should be in initialized as i will need this instance variable in other places
    suspects_csv.each do |list|
      suspect_name = Suspects[list]
      suspects_list << suspect_name
    end  
    puts suspects_list
  end  
end  

#not sure if i need a subclass called guilty as suspect and guilty share the same attributes and nothing more
class Guilty < Suspects 
  def initialize
  guilty_suspect = @suspects_csv.rand()
  end
end  

class Guess 

  # def initialize (guess_count)
  #   @guess_count = guess_count
  # end 

  def match_attribute(attribute) #method to check if the attribute doesn't matches suspect. If it doesn't then delete all the suspects with that attribute
    Guilty.guilty_suspect.each do |x|
      if attribute == Guilty.guilty_suspect[x]
        def delete_suspects_with_attribute(attribute)
      else
        puts "You are getting close"    
      end 
    end 
  end  


  def delete_suspects_with_attribute(attribute) #method to delete the suspects with matched attribute.
    Suspect.suspects_list.each do 

  end  

end  

pool_of_suspects = Suspects.new 
Suspects.show_list_of_suspects


# guilty_suspect = Guilty.rand() #this needs to be selected randomly from the pool of suspects and since guilty_suspect and Suspect kind of share same attributes we could sub class guilty_suspect class


puts "Please enter an attribute?"
attribute = gets.chomp
#have a guess object/class which carries the methods match attribute and delete suspect from the suspects_list attribute
Guess.match_attribute(attribute)



guess = 0

while guess <= 3
  #ask user to input the attribute 
  #if the attribute matches the suspect then tell the user he is closer or else delete the suspects whoes attributes doesn't match

  guess += 1
end  





