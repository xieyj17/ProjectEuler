function same_integer(n)
    num_list = [string(n*i) for i in 2:6]
    ol = Set(string(n))
    for i in num_list
        if Set(i) != ol
            return false
        end
    end
    return true
end


function myfun52()
    i = 1
    bs = 10
    while true
        lb = bs^i
        ub = Int(floor(bs^(i+1) / 6))
        for j in lb:ub
            if same_integer(j)
                return j
            end
        end
        i += 1
    end
end

@time myfun52()
