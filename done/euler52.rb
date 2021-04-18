i = 1

def check(i)
    arr = i.digits.sort
    for j in 2..6
        if (i * j).digits.sort != arr
            return false
        end
    end
    return true
end
loop do

    break if check(i)
    i += 1

end

puts i