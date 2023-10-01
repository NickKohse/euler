s = Time.now
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

# File up to this point copied from my problem 81 solution

# only one route to the places in the first col (and we can start anywhere in the col), initialize them here

i = 1
while i < row_count
    path_length_table[i][0] = mtx[i][0]
    i += 1
end


j = 1 # first column is already calculated
while j < col_count
    i = 0
    while i < row_count
        # First pass assumes we move from the left to right, no up or down
        path_length_table[i][j] = path_length_table[i][j-1] + mtx[i][j]
        i += 1
    end

    i = 0
    while i + 1 < row_count
        # Second pass checks if coming from below will be quicker
        if path_length_table[i][j] > (path_length_table[i + 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i + 1][j] + mtx[i][j]
        end
        i += 1
    end

    i = row_count - 1
    while i > 0
        # Third pass checks if coming from above will be quicker
        if path_length_table[i][j] > (path_length_table[i - 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i - 1][j] + mtx[i][j]
        end
        i -= 1
    end

    ## NOTE: Because the second and third checks depend on each other they need multiple passes
    ## There is likely a better way to solve this, but the code would be more more complicated, and this runs in under .07 seconds on my 7 year old computer
    ## A slightly cleaner way would be to loop through the second and third pass until the column were working on stops changing

    while i + 1 < row_count
        # Second pass checks if coming from below will be quicker
        if path_length_table[i][j] > (path_length_table[i + 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i + 1][j] + mtx[i][j]
        end
        i += 1
    end

    i = row_count - 1
    while i > 0
        # Third pass checks if coming from above will be quicker
        if path_length_table[i][j] > (path_length_table[i - 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i - 1][j] + mtx[i][j]
        end
        i -= 1
    end

    while i + 1 < row_count
        # Second pass checks if coming from below will be quicker
        if path_length_table[i][j] > (path_length_table[i + 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i + 1][j] + mtx[i][j]
        end
        i += 1
    end

    i = row_count - 1
    while i > 0
        # Third pass checks if coming from above will be quicker
        if path_length_table[i][j] > (path_length_table[i - 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i - 1][j] + mtx[i][j]
        end
        i -= 1
    end

    while i + 1 < row_count
        # Second pass checks if coming from below will be quicker
        if path_length_table[i][j] > (path_length_table[i + 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i + 1][j] + mtx[i][j]
        end
        i += 1
    end

    i = row_count - 1
    while i > 0
        # Third pass checks if coming from above will be quicker
        if path_length_table[i][j] > (path_length_table[i - 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i - 1][j] + mtx[i][j]
        end
        i -= 1
    end

    while i + 1 < row_count
        # Second pass checks if coming from below will be quicker
        if path_length_table[i][j] > (path_length_table[i + 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i + 1][j] + mtx[i][j]
        end
        i += 1
    end

    i = row_count - 1
    while i > 0
        # Third pass checks if coming from above will be quicker
        if path_length_table[i][j] > (path_length_table[i - 1][j] + mtx[i][j])
            path_length_table[i][j] = path_length_table[i - 1][j] + mtx[i][j]
        end
        i -= 1
    end
    j += 1
end

# Find the smallest number in the last col
j = col_count - 1
i = 0
smallest_route = path_length_table[i][j]
while i < row_count
    smallest_route = path_length_table[i][j] if path_length_table[i][j] < smallest_route
    i += 1
end

puts smallest_route
