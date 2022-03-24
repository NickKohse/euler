s = "1"
counter = 2
while s.length < 1_000_000
    s += counter.to_s
    counter += 1
end

puts s[1 - 1].to_i * s[10 - 1].to_i * s[100 - 1].to_i * s[1000 - 1].to_i * s[10_000 - 1].to_i * s[100_000 - 1].to_i * s[1_000_000 - 1].to_i