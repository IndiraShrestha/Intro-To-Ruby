require 'pry'
class Board
  attr_accessor :board, :input_squares_array
  
  def initialize 
    @board = []
    @board << ['X',2,3,4,5,6]
    @board << [7,8,9,10,11,12]
    @board << [13,14,15,16,17,18]
    @board << [19,20,21,22,23,24]
    @board << [25,26,27,28,29,30]
    @board << [31,32,33,34,35,36]
    @board << [37,38,39,40,41,42]
    @input_squares_array = []
  end  

  def display_board
    system 'clear'
    @board.each do |row|
      puts row.join('|')
      puts "___________________"
    end  
  end  

  def input_squares(square)
    @input_squares_array << square
    # binding.pry
  end  

  def updated_board(square, player)
    @board.each do |row|
      row.each_index do |column|
        if square == row[column] && row[column].is_a? Numeric
          row[column] = player
        elsif square == row[column] && row[column].is_a? String
          puts "The square you selected is already taken. Please select another square"
        end  
      end
    end  
  end  

end

board = Board.new

board.display_board  

puts "Player 1 please select a square [ 1-6 ]"
square = gets.chomp.to_i
board.updated_board(square, 'X')
board.display_board
board.input_squares(square)








