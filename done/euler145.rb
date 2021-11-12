def is_rev(x)
    rev = x.digits
    return false if rev.first == 0 # No leading zeros allowed
    rev = rev.join.to_i
    (x + rev).digits.all? { |d| d % 2 == 1 }
end

total = 0
for i in 1..1_000_000_000
    total += 1 if is_rev(i)
    puts i if i % 1000 == 0
end

puts total


