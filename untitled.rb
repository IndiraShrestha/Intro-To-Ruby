class Player # what does the player have and what it should be able to do. 
	attr_accessor :hand #attributes are features/properties they have

	def initializer	
		@hand = []
		2.times do 
			@hand.push(rand(1..11))
		end	
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
			return false	
		end	
	end	

	def draw_another_card
		@hand.push(rand(1..11))
	end	
end
