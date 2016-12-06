# get a word and put it in an array
#give a blank spaces/underscore to be filled with words 
#prompt user to input a word (this can then go in an array after converting it into a string, i think we can compare arrays)
#if the word matches the word in the underscore then fill ot the underscore with words 
#if not then start sketching the parts of hangman
#loop while either all the words (array of words) matches the inputed words (which now is an array) or the hangman is hanged

#this is what the final hangman should look like

require 'pry'

class Board
  attr_accessor :hangman_board, :count
  def initialize
    @count = 0
    @hangman_board = [
                ["|   ", " ", " ", " ", " ", " ", "   |"],
                ["|   ", " ", " ", " ", " ", " ", "   |"],
                ["|   ", " ", " ", " ", " ", " ", "   |"],
                ["|   ", " ", " ", " ", " ", " ", "   |"],
                ["|   ", " ", " ", " ", " ", " ", "   |"],
                ["|   ", " ", " ", " ", " ", " ", "   |"]
              ]
  end

  def print_hangman  #having trouble with this function
    @hangman_board.each do |row|
      puts row.join('')
    end   
  end  

  def anatomy_hangman
    case @count 
      when 1
        @hangman_board[0][3] = "("
        @hangman_board[0][5] = ")"
      when 2
        @hangman_board[1][4] = "|"
        @hangman_board[2][4] = "|"
        @hangman_board[3][4] = "|"
      when 3
        @hangman_board[1][2] = "-"
        @hangman_board[1][3] = "-"
        @hangman_board[1][5] = "-"
        @hangman_board[1][6] = "-"
      when 4
        @hangman_board[4][3] = "/"
        @hangman_board[5][2] = "/"
      when 5
        @hangman_board[4][5] = "\\"
        @hangman_board[5][6] = "\\"
    end
  end 

  def count_hangman
    puts "The count before #{@count}"
    @count = 1 + @count
    puts "The count after #{@count}"
    # binding.pry
  end 

  def get_count_hangman
    return @count
  end  

  final_hangman_board = [
              ["|", " ", "(", " ",")", " ", "|"],
              ["|", "--", "|","--", " ", " ", "|"],
              ["|", " ", " ", "|", " ", " ", "|"],
              ["|", " ", " ", "|", " ", " ", "|"],
              ["|", " ", "/", " ", "\\", " ", "|"],
              ["|", "/", " ", " ", " ", "\\", "|"]
            ] 
end


puts "Player 1 please input a word?"

player_input_word = gets.chomp

word_play = player_input_word.downcase.split('')

word_length = word_play.length 

blank_space = []

word_length.times do |letter|
  blank_space << "_ "
end  

played_word = []

board = Board.new
board.print_hangman

puts "\n"
puts blank_space.join('')

#list of input letters and to display the list of input words

# The function to play the game 
#the or condition for while || board == board.final_hangman_board
while blank_space.include?("_ ") == true 

  # system 'clear'
  
  puts "Please enter a letter"
  letter_input = gets.chomp


  if played_word.include?(letter_input)
    puts "You already played that letter"

  #else check if the input letter is included in the word_play  
  elsif word_play.include?(letter_input)
    #find the position of that word in the word_play array 
    #maybe make this a function
    word_play.each_index do |letter_position|
      if letter_input == word_play[letter_position]
        blank_space[letter_position] = letter_input
      end
    end

  #if the letter is not already played and is not included in the word_play we start giving hangman head and limbs and also count hangman  
  else 
    board.count_hangman
    board.anatomy_hangman
  end  

  #diplay the hangman board
  puts "\n"
  board.print_hangman 

  #now display the blank spaces 
  puts blank_space.join('')


  #there are 5 turn before the hangman is complete, which means the player lost so we need to break the loop
  if board.get_count_hangman == 5
    puts "I am sorry but the word was "
    puts word_play
    break
  end  

  #list of input letters and to display the list of input words
  played_word << letter_input
  
  list_of_played_words = played_word.join('')
  puts "The list of played words are #{list_of_played_words}"

end  




