def is_pal(x)
    arr = x.digits
    p1 = 0
    p2 = arr.length - 1
    while p1 < p2
        return false unless arr[p1] == arr[p2]
        p1 += 1
        p2 -= 1
    end

    return true
end

sum = 0

for i in 1..1_000_000
    sum += i if is_pal(i) && is_pal(i.to_s(2).to_i)
end

puts sum