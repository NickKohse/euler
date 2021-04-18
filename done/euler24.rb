# 10 digits, needs to find millionth arrangement, 9! arrangements after first digit so first digit reference is = 1000000 - 1  / 9! = 2 (integer division), 
# second = (1000000 - 1 % 9!) / 8! and so on
# becuase its a permuatation reference refers to which of thee remaining digits (in order) should be used, not the digit itself

ans = []
numbers = Array(0..9)
last_digit = 0
current_itr = 1000000 - 1

def fact(x)
    return Array(1..x).inject(1) { |prod, val| prod *= val}
end

while ans.length != 10
    ptr = current_itr / fact(10 - ans.length - 1)
    next_digit = numbers[ptr]
    numbers.delete_at(ptr)
    current_itr %= fact(10 - ans.length - 1)
    ans.push(next_digit)
end

puts ans.join