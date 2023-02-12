# sieve of atkin
def find_nth_prime(nth)
  results = [2,3]
  # heuristic?
  limit = nth * 20
  sieve = [false] * limit
  sieve[2] = true
  sieve[3] = true
  last_n = 1
  loop do
    last_n.upto(Math.sqrt(limit)) do |x|
      last_n.upto(Math.sqrt(limit)) do |y|
        n = 4*x*x + y*y
        if n <= limit && (n % 12 == 1 || n % 12 == 5)
          sieve[n] = !sieve[n]
        end
        n = 3*x*x + y*y
        if n <= limit && n % 12 == 7
          sieve[n] = !sieve[n]
        end
        n = 3*x*x - y*y
        if x > y && n <= limit && n % 12 == 11
          sieve[n] = !sieve[n]
        end
      end
    end
    5.upto(Math.sqrt(limit)) do |r|
      if sieve[r]
        (r*r).step(limit, r*r) do |i|
          sieve[i] = false
        end
      end
    end
    5.upto(limit) do |i|
      results << i if sieve[i]
    end
    if results.size < nth
      throw "Increase heuristic"
    end
    break
  end
  results[nth-1]
end
puts "10001st prime = #{find_nth_prime(10001)}"
=begin
# BRUTE FORCE METHOD
def is_prime(n)
  on = n
  c = 2
  prime = true
  while n > 1
    if n % c == 0
      prime = false if c != on
      break
    else
      c += 1
    end
  end
  prime
end
n = 2
primes = []
while primes.size < 10_001
  if is_prime(n)
    primes << n
  end
  n += 1
  if n % 100 == 0
    puts "Found #{primes.size} primes, n = #{n}"
  end
end

puts "10,001st prime: #{primes.last}"
=end
