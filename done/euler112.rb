
def is_decreasing(x)
    current = nil
    x.digits.reverse.each do |digit|
        if current.nil? || current >= digit
            current = digit
        else
            return false
        end
    end
    return true
end

def is_increasing(x)
    current = nil
    x.digits.reverse.each do |digit|
        if current.nil? || current <= digit
            current = digit
        else
            return false
        end
    end
    return true
end

def is_bouncy(x)
    return !is_decreasing(x) && !is_increasing(x)
end

n = 99
bouncy = 0

while true
    n += 1
    if n % 10000 == 0
        puts n
    end
    if is_bouncy(n)
        bouncy += 1
    end
    if (bouncy / n.to_f) == 0.99
        puts n
        break
    end
end