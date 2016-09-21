def is_prime?(num)
  prime = true

  (2...num).each do |x|
    prime = false if num % x == 0
  end 

  return num if prime == true 
end  

puts is_prime?(13)

# def find_prime_at?(prime_at)
#   prime_array = [2, 3]
  

#   while prime_array.length <= prime_at
#     prime_array << num if is_prime?(num)
#   end  
#   prime_array[prime_at]
# end  