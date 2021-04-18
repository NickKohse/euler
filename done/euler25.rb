fx = 1
fy = 1
fn = 2

while fy.digits.length < 1000
    tmp = fy
    fy += fx
    fx = tmp
    puts fy
    fn += 1
end
puts
puts fn
puts fy.digits.length