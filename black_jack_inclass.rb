class Cards
  attr_reader :face, :suit, :value
  def initialize(face, suit, value)
    @face = face
    @suit = suit
    @value = value
  end  

end


class Deck
  def initialize  
    @card_list = [] 
    ["Spades", "Clubs", "Hearts", "Diamonds"].each do |suit|
      (2..10).each do |face|
        @card_list << Card.new("")
      end 
    end  
  end
  
  def get_card
    @card_list.pop
    #rand(1..10)
  end  
end  

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @hand = []
    @hand_total = 0
  end  

  def give_card(card)
    @hand << card
    @hand_total += card
  end  

  def show_card
    puts "#{@name} has a card: #{@hand[0]}"
  end  

  def show_cards
    puts "#{@name} has the following cards: " + @hand.join(", ") + " for a total value of #{@hand_value}"
  end  

  def hand_value
    @hand_total
  end  

end  




#assume that all the classes have been written so start writing the code first
#by writing the game assuming that things we need to be able to do and then we can do ahead and write out classes and methods we are hopefully doing that 
deck = Deck.new #Write a Deck class
dealer = Player.new("Dealer") #Write a player class. Player class should have a name
puts "What is your name?"
name = gets.chomp
player = Player.new(name)

dealer.give_card(deck.get_card) #deck.get_card is a method that is passed on give_card method
dealer.give_card(deck.get_card) #player class needs give_card and give class needs get_card

player.give_card(deck.get_card) 
player.give_card(deck.get_card)

dealer.show_card #Player needs method show card
player.show_cards #Player needs method show cards 

while player.hand_value < 21
  puts "Would you like to hit"
  if gets.chomp.downcase == "true"
    player.give_card(deck.get_card)
    player.show_cards
  else 
    break  
  end  
end  

while dealer.hand_value < 17 #Player needs method hand_value
  dealer.give_card(deck.get_card)
end   

if player.hand_value > 21
  puts "You have lost the game"
  exit
end  

if dealer.hand_value > 21
  puts "You win the dealer has gone over"
  exit
end

if player.hand_value > dealer.hand_value
  puts "#{player.name} wins!"
elsif dealer.hand_value > player.hand_value
  puts "Dealer wins.Player "
else 
  puts "It's a tie"   
end  


