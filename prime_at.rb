require "pry"

# def is_prime?(num)
#   prime = true

#   (2...num).each do |x|
#     prime = false if num % x == 0
#   end 

#   return num if prime == true 
# end  


# def find_prime_at?(prime_at, is_prime?(num)) 
#   prime_array = [2]
#   num = 3
#   while prime_array.length <= prime_at
#     prime_array << num if is_prime?(num)
#     num +=1
#     binding.pry
#   end 

#   prime_array[prime_at]

# end  

# puts find_prime_at(prime_at, is_prime?(num))

def find_prime_at?(prime_at) 
  prime_array = [2]
  num = 3
  while prime_array.length <= prime_at
    prime = true

    (2...num).each do |x|
      prime = false if num % x == 0
    end 

    # return num if prime == true 

    prime_array << num if prime == true
    num +=1
  end 

  return prime_array.last
end  

puts find_prime_at?(10001)

