# Iterate hadn of dice to next highest (i.e. for 6 sided) [1,3,6] -> [1,4,1], if at max return false
def iterate(arr,v)
    return false if arr.all? { |value| value >= v }
    x = arr.length - 1
    arr[x] = arr.last + 1
    while x >= 0 do
        if arr[x] > v && x > 0
            arr[x] = 1
            arr[x - 1] = arr[x - 1] + 1   
        end
        x -= 1
    end
    arr
end

# Return all possible sums when rolling n v sided die
def get_rolls(v,n)
    hand = Array.new(n,1)
    perms = []
    while hand
        perms.push(hand.inject(0, :+))
        hand = iterate(hand,v)
    end
    perms
end

peter = get_rolls(4,9)
colin = get_rolls(6,6)

matchups = peter.length * colin.length
peter_wins = 0
puts "#{matchups} possible matchups"

# convert huge arrays of repeating numbers to hash i.e. [1,1,1,2,2,3] => {1:3, 2:2, 3:1}, if x > y; wins += peter[x] * colin[y] (I think) 
peter_t = peter.tally
colin_t = colin.tally
puts peter_t
puts colin_t

peter_t.each do |p_k, p_v|
    colin_t.each do |c_k, c_v|
        peter_wins += p_v * c_v if p_k > c_k
    end
end

puts peter_wins.to_f / matchups
