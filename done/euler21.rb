def d(a)
    div_sum = 1 # one divides everything

    limit = a / 2

    for i in 2..limit
        div_sum += i if a % i == 0
    end

    return div_sum
end

amicable = []

for a in 2..10000
    b = d(a)
    next if amicable.include?(b) # means we did it already
    if d(b) == a && b != a
        amicable.push(a)
        amicable.push(b)
    end  
end

puts amicable.inject(0) { |sum,x| sum += x }