N = 20
lattice = []

(N+1).times do |y|
  lattice << []
  (N+1).times do |x|
    lattice[y] << 0
    if x == 0 && y == 0
      lattice[y][x] = 1
    else
      if x > 0
        lattice[y][x] += lattice[y][x-1]
      end
      if y > 0
        lattice[y][x] += lattice[y-1][x]
      end
    end
  end
end

puts "NUM PATHS: #{lattice[N][N]}"
