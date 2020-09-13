function myfun29()
    res = []
    for a in 2:100
        for b in 2:100
            append!(res, big(a)^b)
        end
    end
    return length(Set(res))
end

@time myfun29()
