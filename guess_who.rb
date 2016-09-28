require 'csv'
require 'terminal-table'
require 'pry'
### ------------------------------------------------------------------------------------------- ###
class Suspects

  attr_reader :suspects_list, :guilty_suspect

  def initialize
    @suspects_list = CSV.read('Suspects_file.csv')  
    @remaining_suspects = []
    @guilty_suspect = [] 
  end 

  def guilty_suspect
    @guilty_suspect = @suspects_list.sample
  end 

  def show_list_of_suspects
    @suspects_list
    table = Terminal::Table.new :title =>'Suspects', :headings =>['Name', 'Gender', 'Color', 'Hair', 'EyeColor'], :rows => @suspects_list 
    puts table
  end

  def delete_not_matched_gender(gender) #method to delete the suspects with matched attribute.
    @suspects_list.each do |suspects|
      if suspects[1] == gender && gender != @guilty_suspect[1]
        index_of_suspect = @suspects_list.index(suspects)
        @suspects_list.delete_at(index_of_suspect)
        puts index_of_suspect
      end
    end
    # binding.pry
  end  
 
end  # end of Suspects class

### ------------------------------------------------------------------------------ ###

guess = 0
guess_who = Suspects.new

suspect_name = guess_who.guilty_suspect
puts suspect_name
puts guess_who.show_list_of_suspects # guess_who.show_list_of_suspects
puts "Please choose an attribute of 1 for Gender, 2 for Skin Color, 3 for Hair color, 4 for Eye color?" #ask user to input the attribute 
attribute = gets.chomp.to_i

if attribute == 1
  puts "Please enter the Gender(Boy or Girl)?"
  gender = gets.chomp.to_s.downcase
elsif attribute == 2
  puts "Please enter the Skin Color(Black or White)?"
  skin_color = gets.chomp.to_s.downcase
elsif attribute == 3
  puts "Please enter the Hair Color(Auburn, Black or Brown or Blonde)?"
  hair_color = gets.chomp.to_s.downcase
elsif attribute == 4
  puts "Please enter the Eye Color(Green, Brown, Blue)?"
  eye_color = gets.chomp.to_s.downcase  
else
  puts "Please enter a valid choice"
end

guess_who.delete_not_matched_gender(gender)
guess_who.show_list_of_suspects







