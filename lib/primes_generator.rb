module PrimesGenerator
  
  class << self
    # all prime numbers can be written in the form 6k ± 1
    # if the number is composite at least one of the factors is smaller than sqrt(n)
    # so we only have to check until there
    def is_prime?(number)
      return true if number == 2 or number == 3
      return false if number < 2 or number % 2 == 0 or number % 3 == 0
      (6..Math.sqrt(number).ceil).step(6) do |i|
        return false if number % (i - 1) == 0
        return false if number % (i + 1) == 0
      end
      return true
    end
    
    def generate(first, last)
      
    end
  end
  
end