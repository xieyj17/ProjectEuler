function myfun40(D)
    i = 1
    n=[]
    while length(n) < (10^D)
        append!(n, string(i))
        i+=1
    end
    res = 1
    for j in 0:D
        res *= parse(Int, n[10^j])
    end
    return res
end

myfun40(6)
