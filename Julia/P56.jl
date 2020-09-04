function myfun56()
    tmax = 0
    for i in 1:99
        for j in 1:99
            n = big(i)^big(j)
            ts = sum([parse(Int, i) for i in string(n)])
            if ts > tmax
                tmax = ts
            end
        end
    end
    return tmax
end

@time myfun56()
