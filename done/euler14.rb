def collatz(x)
    l = 1
    while x != 1
        if x % 2 == 0
            x /= 2
        else
            x = x*3 + 1
        end
        l += 1
    end
    return l
end

maxL = 0;
maxI = 0;

puts collatz(13)

for i in 1..999999
    l = collatz(i)
    if l > maxL
        maxL = l
        maxI = i
    end
end

puts "Longest collatz sequence sarts with #{maxI}"