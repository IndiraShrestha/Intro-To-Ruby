class Player 
  attr_accessor :hand 
  def initialize (dealer)
    @hand = []
    2.times do 
      @hand.push(rand(1..11))
    end 

    dealers_card = dealer.hand[0]
    puts "One of the Dealer's card it #{dealers_card}"
  end 


  def hand_value 
    total = 0
    @hand.each do |card|
      total += card
    end 
    puts "#{total}"
    return total
  end 

  def check_card
    if self.hand_value > 21 
      return true
    else 
      puts "I am sorry but the total is #{self.hand_value}"
      return false  
    end 
  end 

  def draw_another_card
    @hand.push(rand(1..11))
  end 
end


class Dealer 
  attr_accessor :hand 
  def initialize 
    @hand = []
    2.times do |card|
      @hand.push(rand(1..10))
    end  
  end 

  def hand_value
    total = 0 
    @hand.each do |card|
      total += card
    end 
    puts "The total card point #{total}"
  end  

  def dealer_check_card
    if self.hand_value < 21 
      while self.hand_value < 17
        dealer_gets_another_card
      end
    else 
      puts "Dealer got busted. His total is #{hand_value.total}"  
    end    
  end  

  def dealer_gets_another_card
    @hand.push(rand(1..10))
  end 

end


class BlackJack_Game 
  attr_accessor :player, :dealer

  def initialize 
    @dealer = Dealer.new
    @player = Player.new(@dealer)
  end 

  def player_Hit_Stay 
    while !@player.check_card
      puts "Do you want to Hit or Stay?"
      answer = gets.chomp
      if answer.upcase == "HIT"
        @player.draw_another_card
        
      elsif answer.upcase == "STAY" 
          
          return false
      end 
    end   
  end 
end 

class cards
  def cards_generated
  cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 
    1, 2
  ]
  Player_card1 = cards[rand(1..52)]
  Player_card2 = cards[rand(1..52)]

  Dealer_card1 = cards[rand(1..52)]
  Dealer_card2 = cards[rand(1..52)]
  end
end   

