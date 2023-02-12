palindromes = {}
100.upto(999) do |i|
  100.upto(999) do |j|
    prod = i * j
    if prod.to_s == prod.to_s.reverse
      palindromes[prod] = [i, j]
    end
  end
end

largest = palindromes.keys.max
puts "Prob 4: Largest: #{largest} = #{palindromes[largest].first} x #{palindromes[largest].last}, total palindromes: #{palindromes.size}"
