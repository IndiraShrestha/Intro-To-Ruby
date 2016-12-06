require 'pry'
class Board
  attr_accessor :board
  
  def initialize (row, column)
    @board = []
    @rows = row
    @columns = column
  end  

  def display_board
    # system 'clear'
    @rows.times do |row|
      row = []
      @columns.times do |column|
        row << '_'
      end 
      puts row.join('|')
      @board << row 
    end  
  end  

  def updated_board(column, player)
    if column == 1 
      @board.each do |row|
        row.each_index do |x|
          stack = (row.length - x -1).to_i
          puts stack
          binding.pry
          # puts @board[stack][(column-1)]
          # if @board[stack][(column-1)] != '_'
          #   puts "The column is full"
          # elsif @board[stack][(column-1)] == '_'      
          #   @board[stack][(column-1)] = player
          # end  
        end
      end  
    end  
  end  
  
end

board = Board.new(6,7)

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
  binding.pry

end









