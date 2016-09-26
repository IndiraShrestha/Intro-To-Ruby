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
    # system 'clear'
    @board.each do |row|
      puts row.join('|')
      puts "___________________"
    end  
  end  

  def updated_board(column, player)
    if column == 1 
      if @board[6][(column-1)].is_a?(Numeric) 
        @board[6][(column-1)] = player  
      elsif @board[5][(column-1)].is_a?(Numeric)
        @board[5][(column-1)] = player
      elsif @board[4][(column-1)].is_a?(Numeric)
        @board[4][(column-1)] = player 
      elsif @board[3][(column-1)].is_a?(Numeric)
        @board[3][(column-1)] = player  
      elsif @board[2][(column-1)].is_a?(Numeric)
        @board[2][(column-1)] = player  
      elsif @board[1][(column-1)].is_a?(Numeric)
        @board[1][(column-1)] = player  
      elsif @board[0][(column-1)].is_a?(Numeric)
        @board[0][(column-1)] = player  
      elsif 
        puts "Please select a valid column"          
      end 
    elsif column == 2
      if @board[6][(column-1)].is_a?(Numeric) 
        @board[6][(column-1)] = player  
      elsif @board[5][(column-1)].is_a?(Numeric)
        @board[5][(column-1)] = player
      elsif @board[4][(column-1)].is_a?(Numeric)
        @board[4][(column-1)] = player 
      elsif @board[3][(column-1)].is_a?(Numeric)
        @board[3][(column-1)] = player  
      elsif @board[2][(column-1)].is_a?(Numeric)
        @board[2][(column-1)] = player  
      elsif @board[1][(column-1)].is_a?(Numeric)
        @board[1][(column-1)] = player  
      elsif @board[0][(column-1)].is_a?(Numeric)
        @board[0][(column-1)] = player  
      elsif 
        puts "Please select a valid column"          
      end 

    end  
  end  

  def check_vertical_input(square)


  end  
end

board = Board.new

board.display_board  

while true 
  puts "Player 1 please select a column [ 1-6 ]"
  column = gets.chomp.to_i
  board.updated_board(column, 'X')
  board.display_board 


  puts "Player 2 please select a column"
  column = gets.chomp.to_i
  board.updated_board(column, 'O')
  board.display_board 

end









