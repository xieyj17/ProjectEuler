function is_curious(n)
    sn = string(n)
    sums = sum([factorial(parse(Int, i)) for i in sn])
    if sums == n
        return true
    else
        return false
    end
end

function myfun34()
    res = 0
    for i in 3:(factorial(9)*7)
        if is_curious(i)
            res += i
        end
    end
    return res
end

myfun34()
