class Mycar
  attr_accessor :mileage
  def gas_mileage(gas, miles)
    @mileage = "#{miles/gas}"
  end 

end

class Person
  attr_accessor :name
  def initialize (name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

puts "Please enter a number between 1-100?"

number = gets.chomp.to_i

def check_number (number)
  if number > 0 || number < 101 
    if number > 0 || number < 50
      puts "The #{number} is in between 0-50"

    end 
  else 
    puts "Please enter a number between 1-100"
  end 
end 