function count_nth_root(n)
    res = 0
    for i in 9:-1:1
        if length(string(big(i)^n)) == n
            res += 1
        else
            break
        end
    end
    return res
end


function myfun63()
    res = 0
    i = 1
    while true
        tr = count_nth_root(i)
        if tr == 0
            println(i)
            break
        else
            res += tr
        end
        i+=1
    end
    return res
end

@time myfun63()
