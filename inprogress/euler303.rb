def which_mult_dig_less_than_2(x)
    n = 1
    loop do
        return n if (x * n).digits.all? { |d| d <= 2 }
        n += 1
    end
end

total = 0
for i in 1..10000
    total += (which_mult_dig_less_than_2(i)) / i
    puts i if i % 100 == 0
end

puts total
