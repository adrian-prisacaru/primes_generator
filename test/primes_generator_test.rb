require 'simplecov'
SimpleCov.start

require 'test/unit'
require 'contest'
require_relative '../lib/primes_generator'

class PrimesGeneratorTest < Test::Unit::TestCase
  
  context 'is prime' do
    
    should 'be true for primes' do
      assert(PrimesGenerator.is_prime?(2))
      assert(PrimesGenerator.is_prime?(3))
      assert(PrimesGenerator.is_prime?(5))
      assert(PrimesGenerator.is_prime?(7))
      assert(PrimesGenerator.is_prime?(29))
      assert(PrimesGenerator.is_prime?(137))
      assert(PrimesGenerator.is_prime?(541))
      assert(PrimesGenerator.is_prime?(1063))
      assert(PrimesGenerator.is_prime?(5309))
      assert(PrimesGenerator.is_prime?(12491))
    end
    
    should 'not be true for composite numbers' do
      assert(!PrimesGenerator.is_prime?(4))
      assert(!PrimesGenerator.is_prime?(9))
      assert(!PrimesGenerator.is_prime?(49))
      assert(!PrimesGenerator.is_prime?(100))
    end
    
    should 'not be true for 1' do
      assert(!PrimesGenerator.is_prime?(1))
    end
    
    should 'not be true for 0' do
      assert(!PrimesGenerator.is_prime?(0))
    end
    
    should 'not be true for negative numbers' do
      assert(!PrimesGenerator.is_prime?(-3))
      assert(!PrimesGenerator.is_prime?(-11))
    end
    
    should 'check the square root of the number' do
      assert(!PrimesGenerator.is_prime?(49))
    end
  end
  
  context 'generate' do
    
    should 'return the correct result' do
      assert_equal([7901, 7907, 7919], PrimesGenerator.generate(7900, 7920))
    end
    
    should 'include the endpoints' do
      assert_equal([7, 11, 13, 17, 19], PrimesGenerator.generate(7, 19))
    end
    
    should 'handle inverse ranges' do
      assert_equal(PrimesGenerator.generate(1, 10), PrimesGenerator.generate(10, 1))
    end
  end

end
