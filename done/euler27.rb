def prime(x)
    for i in 2..Math.sqrt(x.abs).to_i
        return false if x % i == 0
    end
    return true
end

def consecutive(a,b)
    n = 0
    while prime((n ** 2) + (a * n) + b)
        n += 1    
    end
    return n
end

a = -999
b = -1000

max_consecutive_primes = 0
max_a = 1001
max_b = 1001

while a < 1000
    while b <= 1000
        c = consecutive(a,b)
        if c > max_consecutive_primes
            max_consecutive_primes = c
            max_a = a
            max_b = b
        end
        b += 1
    end
    b = -1000
    a += 1
    puts a
end

puts "Max: #{max_a * max_b}, streak #{max_consecutive_primes}"
