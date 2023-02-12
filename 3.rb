n = ARGV[0].to_i
on = n
factors = []
c = 2
while n > 1
  #puts "n % c = #{n} % #{c} = #{n % c}"
  if n % c == 0
    factors << c
    n /= c
  else
    c += 1
  end
end

puts "Largest Prime Factor: #{factors.last}: All: #{factors.inspect}"
