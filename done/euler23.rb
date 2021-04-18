def d(a)
    div_sum = 1 # one divides everything

    limit = a / 2

    for i in 2..limit
        div_sum += i if a % i == 0
    end

    return div_sum
end

abundant = []
for i in 1..28123
    abundant.push(i) if d(i) > i
    puts i if i % 1000 == 0
end

def min(i,j)
    return i if i < j
    return j
end

sum = 0
sum_of_2_abundants = Array.new(28123, false)

for i in 0..abundant.length - 1
    for j in i..abundant.length - 1 # No need to store b + a if we have a + b
        break if abundant[i] + abundant[j] > 28123
        sum_of_2_abundants[abundant[i] + abundant[j]] = true
    end
    puts i if i % 1000 == 0
end

for i in 1..28123
    sum += i unless sum_of_2_abundants[i]
    puts i if i % 1000 == 0
end
puts sum

