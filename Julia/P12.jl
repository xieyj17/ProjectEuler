function count_divisors(n)
    ans = 2
    upper_bound = Int(floor(sqrt(n)))
    for i in 2:upper_bound
        if n % i == 0
            ans += 2
        end
    end
    return ans
end

function myfun12(m)
    i = 2
    while true
        ts = sum(1:i)
        if count_divisors(ts) > m
            return ts
            break
        end
        i += 1
    end
end

@time myfun12(500)
