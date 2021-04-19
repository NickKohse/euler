def fact(x)
    Array(1..x).inject(1) { |prod, x| prod *= x }
end

def choose(n, r)
    numerator = fact(n)
    denominator = fact(r) * fact(n - r)
    return numerator / denominator # must be divisible
end

count = 0
for n in 1..100
    for r in 1..n # r can't be more than n by definition
        count += 1 if choose(n,r) > 1_000_000
    end
end

puts count