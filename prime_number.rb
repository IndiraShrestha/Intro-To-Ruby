require 'pry'
def joinor(array, deliminator = ", ", word = "or")
  array[-1] = "#{word} #{array[-1]}" if array.size > 1
  array.join(deliminator) 
end  

puts joinor([1, 2, 3])

