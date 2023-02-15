chain = {}
len = Hash.new{|h,k| h[k] = 1}

def nextval(n)
  if n & 1 == 0
    n >> 1
  else
    3*n + 1
  end
end

max = [0, nil]

1_000_000.downto(1) do |n|
  puts "Calculating for n = #{n}" if n >= 999_995
  current = [n]
  old_n = n
  while old_n > 1 && chain[old_n].nil?
    new_n = nextval(old_n)
    chain[old_n] = new_n
    len[n] += 1
    old_n = new_n
    current << new_n
  end
  puts "chain for n #{n} stops at #{old_n}, length => #{len[n]}" if n >= 999_995
  if new_n == 1
    curr_len = len[n] - 1
    current[1..-1].each {|l| len[l] = curr_len; curr_len -= 1 }
  else
    len_left = len[new_n]
    curr_len = len[n]
    current[0..-2].each {|l| len[l] = curr_len + len_left; curr_len -= 1 }
  end
  puts "after following #{old_n} (#{len[old_n]}), #{n} length is #{len[n]}" if n >= 999_995
  if len[n] > max.first
    max = [len[n], n]
  end
end

puts "MAX: #{max.inspect}"
puts "CHAIN: #{chain.size}"
