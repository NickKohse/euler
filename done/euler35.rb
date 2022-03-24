def prime(x)
    for i in 2..Math.sqrt(x.abs).to_i
        return false if x % i == 0
    end
    return true
end

# Check if a prime number is a circular prime
def circular_prime(x)
    # can assume an unrotated x is prime
    digs = x.digits
    rotations = x.digits.length - 1
    rotations.times do
        first = digs.pop
        digs.prepend first
        x = digs.reverse.join.to_i
        return false unless prime(x)
    end
    return true
end

count = 0
for i in 2..1_000_000
   count += 1 if prime(i) && circular_prime(i)
end

puts count
