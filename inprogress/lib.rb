def gcd(p, n) # i.e. gcd(p,n) = 1, use euclidean gcd

    while p != 0
        x = n % p
        n = p
        p = x
    end

    return n
end

def prime(x)
    for i in 2..Math.sqrt(x.abs).to_i
        return false if x % i == 0
    end
    return true
end
