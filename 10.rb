# sieve of atkin
def sum_primes_up_to(limit)
  results = [2,3]
  # heuristic?
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
    break
  end
  results.sum
end
N = 2_000_000
puts "sum of primes up to #{N}: #{sum_primes_up_to(N)}"

