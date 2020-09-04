function p5_helper(n)
    count = 0
    if n%2==0
        if binomial(big(n), big(Int(n/2))) > 1e6
            count += 1
        end
    end
    sp = Int(ceil(n/2) - 1)
    while binomial(big(n), big(sp)) > 1e6
        count += 2
        sp -= 1
    end
    return count
end

function myfun53()
    res = 0
    for n in 23:100
        res += p5_helper(n)
    end
    return res
end

@time myfun53()
