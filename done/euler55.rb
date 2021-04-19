def is_pal_num(x)
    digs = x.digits
    i = 0
    j = digs.length - 1
    while i <= j
        return false if digs[i] != digs[j]
        i += 1
        j -= 1
    end
    return true
end

count = 0
for i in 1..9999
    iterations = 0
    sum = i + i.digits.join.to_i
    while !is_pal_num(sum)
        iterations += 1
        sum = sum + sum.digits.join.to_i
        if iterations >= 50
            count += 1
            break
        end
    end
end

puts count