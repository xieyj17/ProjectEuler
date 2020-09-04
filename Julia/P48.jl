function myfun48(D)
    res = 0

    for i in 1:D
        res += big(i)^big(i)
    end

    rs = string(res)

    return rs[(length(rs)-9) : length(rs)]
end

@time myfun48(1000)
