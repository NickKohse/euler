def int_to_words(x, str = '')
    digs = x.digits.reverse
    mapping = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'forty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninety'
    }
    if digs.length == 4
        return int_to_words(digs.drop(1).join.to_i, "#{mapping[digs[0]]} thousand ")
    elsif digs.length == 3
        if digs[0] == 0
            return int_to_words(digs.drop(1).join.to_i, str)
        else
            if digs[1] == 0 && digs[2] == 0
                return "#{str}#{mapping[digs[0]]} hundred"
            else
                int_to_words(digs.drop(1).join.to_i, "#{str}#{mapping[digs[0]]} hundred and ")
            end
        end
    elsif digs.length == 2
        if x >= 20
            if digs[1] != 0
                return int_to_words(digs.drop(1).join.to_i, "#{str}#{mapping[digs[0] * 10]} ")
            else
                return "#{str}#{mapping[digs[0] * 10]}"
            end
        else
            return "#{str}#{mapping[x]}"
        end
    elsif digs.length == 1
        return "#{str}#{mapping[x]}"
    end
end

count = 0
for i in 1..1000
    count += int_to_words(i).gsub(' ', '').length
end

puts count

