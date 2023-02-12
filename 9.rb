1.upto(1000) do |a|
  a.upto(1000) do |b|
    c = Math.sqrt(a*a + b*b)
    if c == c.floor
      if a + b + c == 1000
        puts "a=#{a} b=#{b} c=#{c}"
        puts "a^2=#{a*a} b^2=#{b*b} c^2=#{c*c}"
        puts "a*b*c = #{a*b*c}"
        exit 0
      end
    end
  end
end
