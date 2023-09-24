data = File.read('matrix81.txt')

mtx = data.split("\n")
mtx.map! { |line| line.split ',' }

mtx.each do |row|
    row.map! { |element| element.to_i }
end

row_count = mtx.length
col_count = mtx[0].length

path_length_table = Array.new(row_count){Array.new(col_count)}

path_length_table[0][0] = mtx[0][0]

# only one route to the places in the first row or col, initialize them here
i = 1
while i < col_count
    path_length_table[0][i] = path_length_table[0][i-1] + mtx[0][i] 
    i += 1
end

i = 1
while i < row_count
    path_length_table[i][0] = path_length_table[i-1][0] + mtx[i][0]
    i += 1
end

i = 1
while i < row_count
    j = 1
    while j < col_count
        path_length_table[i][j] = [path_length_table[i][j-1], path_length_table[i-1][j]].min + mtx[i][j]# the minimum of path_length i,j-1 + mtx i,j and path_length i-1,j + mtx i,j
        j += 1
    end
    i += 1
end

puts path_length_table[row_count - 1][col_count - 1]
