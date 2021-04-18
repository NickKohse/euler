def is_right(x,y,z)
    return (x * x) + (y * y) == (z * z)
end

max_i = 0
max_count = 0
for i in 3..1000
    x = 1
    y = 1
    count = 0
    while x < i
        while (y + x) < i
            z = i - x - y
            count += 1 if is_right(x,y,z)
            y += 1
        end
        x += 1
        y = x
    end
    if count > max_count
        max_i = i
        max_count = count
    end
    puts "#{i} #{count}"
end

puts max_i