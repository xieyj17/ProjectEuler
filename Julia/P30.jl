function is_fifth_power(n)
    ns = string(n)
    sums = sum([(parse(Int, i))^5 for i in ns])
    if n == sums
        return true
    else
        return false
    end
end


function myfun30()
    res = 0
    for n in 2:(9^5 * 6)
        if is_fifth_power(Int(n))
            res += n
        end
    end
    return res
end

myfun30()
