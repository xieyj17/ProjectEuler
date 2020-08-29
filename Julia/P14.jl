function collatz_length(n)
    count = 1
    while n > 1
        if n%2 == 0
            n = n/2
        else
            n = n*3 +1
        end
        count += 1
    end
    return count
end

function max_length(m)
    res = 0
    temp_max = 0
    for i in 1:2:m
        tl = collatz_length(i)
        if tl > temp_max
            temp_max = tl
            res = i
        end
    end
    return res
end

@time max_length(1e6)
