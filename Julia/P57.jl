function nth_fraction(i)
    tn = big(1)
    td = big(2)
    for j in 2:i
        ntn = tn + 2*td
        tn, td = td, ntn
    end
    tn = tn + td
    return [tn, td]
end

function myfun57(D)
    res = 0
    n,d = [3,2]
    for i in 2:D
        n, d = nth_fraction(i)
        if length(string(n)) > length(string(d))
            res += 1
        end
    end
    return res
end

myfun57(1000)
