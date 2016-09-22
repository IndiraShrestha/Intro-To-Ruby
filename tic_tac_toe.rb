#Tic Tac toe game
# Diplay the borad
# Ask user to input a square
#Ask another user to input a square 
# check winning if three sq ( 8 possiblity are done)
#diplay winner
#check for tie
# if not continue to input square 
# play again
class Board 
  attr_reader :board

  def initialize 
    @board = []
    board << [1, 2, 3]
    board << [4, 5, 6]
    board << [7, 8, 9]

  end  

  def display_board
    @board 
    board.each do |x|
      puts x.join('|')
      puts "_______"
    end 
  end 

  def move(position, player)
    @board.each do |row|
      row.each_index do |column|
        if row[column].is_a? String && position == (column - 1)
          puts "The position is already taken"
          puts row[column]
          # return false
        elsif position == row[column] && player == "Player1"
          row[column] = "X"  
          puts column
        elsif position == row[column] && player == "Player2"
          row[column] = "O"
        end  
      end
    end    
  end  

  def winning?
  if @board[0][0] == @board[1][1] and @board[1][1] == @board[2][2]
    puts "Player 1 wins" if @board[0][0] == "X" 
    puts "Player 2 wins" if @board[0][0] == "O"
    true
  elsif @board[0][2] == @board[1][1] and @board[1][1] == @board[2][0]
    puts "Player 1 wins" if @board[0][2] == "X"
    puts "Player 2 wins" if @board[0][2] == "O"
    true
  elsif @board[0][0] == @board[0][1] and @board[0][1] == @board[0][2]
    puts "Player 1 wins" if @board[0][0] == "X"
    puts "Player 2 wins" if @board[0][0] == "O"
    true
  elsif @board[0][1] == @board[1][1] and @board[1][1] == @board[2][1]
    puts "Player 1 wins" if @board[0][1] == "X"
    puts "Player 2 wins" if @board[0][1] == "O"
    true
  elsif @board[0][2] == @board[1][2] and @board[1][2] == @board[2][2]
    puts "Player 1 wins" if @board[0][2] == "X"
    puts "Player 2 wins" if @board[0][2] == "O"
    true
  elsif @board[1][0] == @board[1][1] and @board[1][1] == @board[1][2]
    puts "Player 1 wins" if @board[1][0] == "X"
    puts "Player 2 wins" if @board[1][0] == "O"
    true
  elsif @board[2][0] == @board[2][1] and @board[2][1] == @board[2][2]
    puts "Player 1 wins" if @board[2][0] == "X"
    puts "Player 2 wins" if @board[2][0] == "O"
    true
  elsif @board[0][0] == @board[0][1] and @board[0][1] == @board[0][2]
    puts "Player 1 wins" if @board[0][0] = "X"
    puts "Player 2 wins" if @board[0][0] = "O"
    true
  else
    false
  end    
end  
end 



board = Board.new
board.display_board

turn = 0

while turn <= 9 || true
  puts "Which position would you like to mark Player 1?"
  position = gets.chomp.to_i

  board.move(position, "Player1")
  board.display_board
  board.winning?

  puts "Which position would you like to mark Player 2?"
  position = gets.chomp.to_i
  board.move(position, "Player2")
  board.display_board
  board.winning?

  turn += 1 
end  

