class Game
  attr_reader :man, :crate, :wall, :space, :storage
  def initialize
    @man = "@"
    @crate = "o"
    @wall = "#"
    @space = " "
    @storage = "."
  end 
  def build_wall
    5.times do |x|
      puts "#{@wall}"
    end
    looping = 1
    while looping <= 5
      if looping = 1 || looping = 5
        puts "#{@wall}"
        next
      else 
        puts "#{@space}"
        next
      end  
      looping += 1
    end  
  end  
  def move_left
    
  end  
end  



player = Player.new(name) #to create a player to play the game

game = Game.new # to create a new game to play

game.move_left #to move a step left
game.move_right # to move right
game.move_up #to move up
game.move_down #to move down

game.build_wall(level) #to build a wall around the 



