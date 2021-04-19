max_sum = 0
for a in 2..99
    for b in 2..99
        sum = (a ** b).digits.inject(0) { |sum,x| sum += x }
        max_sum = sum if sum > max_sum
    end
end

puts max_sum
