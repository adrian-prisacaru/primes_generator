require_relative 'lib/primes_generator'

if ARGV.length < 1 or ARGV.length > 2
  puts <<-MESSAGE.gsub(/^\s{2}/, '')
  Invalid number of arguments
  Run the program with 1 argument to check if a number is prime
  or with 2 arguments to generate a list with prime numbers
  MESSAGE

elsif ARGV.length == 1
  puts PrimesGenerator.is_prime?(ARGV[0].to_i)
else
  print "#{PrimesGenerator.generate(ARGV[0].to_i, ARGV[1].to_i)}\n"
end
