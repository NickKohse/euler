# Number must be bigger than 1000000000
# This way checked about 389M numbers
# doing it backwards would check about 10^9 / 2 ~ 500M

def check_digits(a)
    i = 0

    while i <= 16
        return false unless a[i] == (i/2) + 1
        i += 2
    end
    return false unless a[18] == 0 # doesnt fit the formula
    return true
end

i = 1_000_000_000
while true
    if i % 1000 == 0
        puts i
    end
    arr = (i ** 2).digits.reverse
    if !check_digits(arr)
        i += 1
        next
    else
        puts i
        break
    end
end