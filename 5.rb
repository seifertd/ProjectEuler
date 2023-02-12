num = nil
i = 20 * 19
while num.nil?
  found = true
  18.downto(2) do |j|
    if i % j > 0
      found = false
      break
    end
  end
  if found
    num = i
  end
  i += 20 * 19
end

puts "NUM: #{num}"
