i = 10
fifth_pow_matches = []


# 9 ^ 5 = 59_049
# Therefore for a 6 digit number the max sum of fifth powers would be 59_049 * 6 = 354294
# And by the same logic any number with grater than 6 digits will always be larger than its digits fifth poewrs summed

while i < 354295
    fifth_pow_matches.push(i) if i.digits.map{| d| d ** 5 }.reduce(:+) == i
    i += 1
end

puts "Sum of all numbers who are a sum of their digits fifth powers: #{fifth_pow_matches.reduce(:+)}"