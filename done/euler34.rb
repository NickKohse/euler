def fact(n)
    return 1 if n == 0
    (1..n).inject(:*) || 1
end

hits = []
for i in 10..1000000
    fact_digit_sum = i.digits.reduce(0) { |sum,x| sum += fact(x) }
    hits.push(i) if fact_digit_sum == i
end

puts hits
puts hits.inject(:+)
