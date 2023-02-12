sumsq = 0
sum = 0
1.upto(100) do |n|
  sumsq += n*n
  sum += n
end

puts "SUM SQ: #{sumsq}"
puts "SUM: #{sum}"
puts "DIFF: #{sum*sum - sumsq}"
