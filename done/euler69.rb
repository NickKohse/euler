def prime(x)
    for i in 2..Math.sqrt(x.abs).to_i
        return false if x % i == 0
    end
    return true
end

num = 2
i = 3

# PROOF:
# Question essentailly can be boiled down to which number under n has the most unique prime factors (to minimize phi(n)), and if two have the same number, which is smaller (again to minimize count of factors).
# For example if n=10. Only 6 and 10 have two unique prime factors, but 6 is smaller. 6 is the product of the first two primes.
# The product, p, of the first m primes (where p <= n) must be the smallest of the group of numbers under n with the most unique prime factors and therefore the answer to the question.
while true
    if prime(i)
        if num * i > 1_000_000
            puts num
            exit 0
        else
            num *= i
        end
    end
    i += 1
end

puts max_i