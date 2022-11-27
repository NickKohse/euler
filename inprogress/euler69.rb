$max = 0

def relativley_prime(p, n) # i.e. gcd(p,n) = 1, use euclidean gcd

    while p != 0
        x = n % p
        n = p
        p = x
    end

    return n == 1
end

def phi(n) # return num of nums less than n which are relativley prime to n
    count = 1 # 1 is relativley prime to everything
    for i in 2..n - 1
        if relativley_prime(i, n)
            count += 1
        end
        if n / count.to_f < $max
            return count # short circuit if we are alreday under max, cuts time in half for n = 10K
        end
    end
    return count
end

max_i = 0

for i in 1..1_000_000
    quotient = i / phi(i).to_f
    puts i if i % 1000 == 0
    if quotient > $max
        max_i = i
        $max = quotient
    end
end

puts max_i