function digit_double!(digit_list)
    pushfirst!(digit_list, 0)
    for i in 2:length(digit_list)
        tn = digit_list[i] * 2
        digit_list[i] = tn % 10
        digit_list[i-1] += div(tn, 10)
    end

    if digit_list[1] == 0
        popfirst!(digit_list)
    end
    return digit_list
end

function myfun16(k)
    res = [2]
    for i in 2:k
        digit_double!(res)
    end
    return sum(res)
end

@time myfun16(1000)
