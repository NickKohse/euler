def chain_end(x)
    while x != 89 && x != 1
        x = x.digits.reduce(0) { |sum ,digit| sum += (digit * digit) }
    end
    return x
end

n = 0
for i in 1..10000000
    x = chain_end(i)
    if x == 89
        n += 1
    end
    if i % 10000 == 0
        puts i
    end
end

puts n

