prev2 = 1
prev1 = 2
sum = 2
count = 2
while (curr = prev1 + prev2) < 4_000_000
  prev2 = prev1
  prev1 = curr
  sum += curr if curr % 2 == 0
end

puts "SUM = #{sum}"
