# same algorithm as 18, but read from file

def max(a,b)
    return a if a > b
    return b
end

triangle = File.read('p067_triangle.txt')

lines = triangle.split("\n")

grid = []
lines.each do |line|
    grid.push(line.split(' ').collect { |num| num.to_i })
end

i = grid.length - 2 # want to start compressing from 1 above last row, compress by adding the bigger of the two lower numbers
while i >= 0
    for j in 0..(grid[i].length - 1)
        grid[i][j] += max(grid[i + 1][j], grid[i + 1][j + 1])
    end
    i -= 1
end

grid.each do |line|
    puts line.join(' ')

end

puts "\n"
puts grid[0]