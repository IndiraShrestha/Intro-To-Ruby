class Animal 
	attr_accessor :predator, :age, :species, :name
	attr_reader :dead

	def initializer predator, age, species, name
		@predator = predator
		@age = age
		@species = species
		@name = name
		@dead = false
	end

	def birthday
		age = self.age + 1
	end	

	def hunt
		if predator 
			puts "You hunt and kill"
		else 
			puts "You can't hunt! You are vegetarian"	
		end	
	end	

	def swim
		if species == "bulldog"
			@dead = true
		else 
			puts "You went on a nice swim"	
		end	
	end	

	def bite 
		if age < 50
			puts "Ouch"
		else 
			puts "You lost your teeth long ago"	
		end	
	end	

	def fight opponent  # in ruby we can assume that this is an animal
		if opponent.dead
			puts "You are fighting a corpse. Good job"
		elsif !self.predator && opponent.predator
			puts "you fight to stand still"
		else 	
		end	
	end	
end	