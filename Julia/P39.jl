function count_solutions(n)
    res = []
    for i in 1:Int(floor(n/2))
        for j in i:(n-i-1)
            k = n - i - j
            tl = [i,j,k]
            ls = maximum(tl)
            deleteat!(tl, argmax(tl))
            if sum([w^2 for w in tl]) == ls^2
                push!(res, sort([i,j,k]))
            end
        end
    end
    return length(Set(res))
end

function myfun39(D)
    res = 0
    tx = 0
    for i in 10:D
        #println(i)
        ti = count_solutions(i)
        if ti > res
            res = ti
            tx = i
        end
    end
    return [res,tx]
end

myfun39(1000)
