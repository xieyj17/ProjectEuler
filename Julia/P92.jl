function to_89(n)
    r = n
    while (r!=1) && (r!=89)
        sn = string(r)
        r = sum([parse(Int, i)^2 for i in sn])
    end
    return (r == 89)
end

function myfun92(D)
    res = 0
    for i in 1:D
        if to_89(i)
            res += 1
        end
    end
    return res
end

myfun92(10000000)



function myfun(D)
    res = 0
    en_list = [89]
    for n in 1:D
        flag = 1
        while flag == 1
            sn = string(n)
            n = sum([parse(Int, i)^2 for i in sn])
            if n in en_list
                append!(en_list, parse(Int, sn))
                flag = 0
                res += 1
            end
            if n == 1
                flag = 0
            end
        end
    end
    return res
end

@time myfun(10000000)
