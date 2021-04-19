terms = []

for a in 2..100
    for b in 2..100
        num = a ** b
        terms.push(num) unless terms.include?(num)
    end
end

puts terms.length
