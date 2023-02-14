def factors(n)
  on = n
  a = nil
  if n == 0
    a = []
  elsif n == 1
    a = [1]
  elsif n == 2
    a = [1, 2]
  elsif n == 3
    a = [1, 3]
  else
    a = [1, on]
    f = 2
    limit = Math.sqrt(n).floor
    while f <= limit
      if n % f == 0
        a << f
        a << n / f if n / f != f
      end
      f += 1
    end
  end
  #puts "Factors of #{on}: #{a.inspect}"
  a
end

nfact = 0
n = 1
tn = 1
while (nfact = factors(tn).size) <= 500
  n += 1
  tn += n
  if n % 100 == 0
    puts "#{n}: tn=#{tn} nfact=#{nfact}"
  end
end

puts "Triangle num #{tn} has #{nfact} factors"

