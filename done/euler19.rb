current_date = 1
current_month = 1
current_dow = 0 # monday is 0 sunday is 6
current_year = 1900

sundays_on_first = 0

def is_eom(d,m,y) # returns true if we went past the end of month i.e. nov 31st
    return false if d <= 28
    thirties = [9, 4, 6, 11]
    if thirties.include?(m)
        return d > 30
    elsif m != 2
        return d > 31
    else
        if y % 4 == 0 && (y % 100 != 0 || y % 400 == 0)
            return d > 29
        else
            return d > 28
        end
    end
end

def inc_date(d,m,y,dow)
    d += 1
    dow += 1
    dow %= 7

    if is_eom(d,m,y)
        m += 1
        d = 1
    end
    
    if m > 12
        y += 1
        m = 1
    end

    return d,m,y,dow
end

while current_year != 2001
    current_date, current_month, current_year, current_dow = inc_date(current_date, current_month, current_year, current_dow)
    sundays_on_first += 1 if current_date == 1 && current_dow == 6 && current_year > 1900 && current_year < 2001
    puts "#{current_year} #{current_month} #{current_date} #{current_dow}"
end

puts sundays_on_first