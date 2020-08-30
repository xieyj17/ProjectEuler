function is_leap(y)
    if y%100 == 0
        if y%400 == 0
            return true
        else
            return false
        end
    else
        if y%4 == 0
            return true
        else
            return false
        end
    end
end

function next_first_day(fd, m, y)
    if m == 2
        if is_leap(y)
            fd = fd + 1
        else
            fd = fd
        end
    elseif m in [4,6,9,11]
        fd = fd + 2
    else
        fd = fd + 3
    end
    fd = fd % 7
    return fd
end

function myfun19(start_year, end_year)
    res = 0
    first_day = 2
    for y in (start_year):(end_year)
        for m in 1:12
            first_day = next_first_day(first_day, m, y)
            if y == 2000 & m == 12
                break
            end
            if first_day == 0
                res += 1
            end
        end
    end
    return res
end

myfun19(1901, 2000)
