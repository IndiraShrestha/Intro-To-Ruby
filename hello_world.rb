my_name = "Indira Shrestha" #defining the variable my_name
her_name = "Analisa"
his_name ="David"


def hello_name some_name #we define the method and takes the arguments some_name (which is the variable)
	puts "Hello, " + some_name  #prints stuff to terminal and adds a new line in the terminal
end

#print "Hello, " + my_name + "\n" (same thing as return)
#also be careful about the number of arguments you put in. 
hello_name(my_name)
hello_name(her_name)
hello_name(his_name)

def hello_name some_name #we define the method and takes the arguments some_name (which is the variable)
	a = "Hello, " + some_name  #prints stuff to terminal and adds a new line in the terminal
	puts a
	a
end

returnvalue = hello_name(my_name) #it
puts returnvalue



def celcius_to_f celcius 
	return celcius * 9 / 5 + 32	 
end

puts "Please enter a temperature in celcius"
celcius = gets.chomp.to_f
puts celcius.to_s + "to fahrentine is " +  celcius_to_f(celcius).to_s

