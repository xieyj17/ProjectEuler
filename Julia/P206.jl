function is_concealed_square(n)
    sn = string(big(n)^2)
    sn = collect(sn)
    sa = [sn[j] for j in 1:2:19]
    return sa == ['1','2','3','4','5','6','7','8','9','0']
end

function myfun206()
    i = 1000000000
    while true
        if is_concealed_square(i)
            return i
            break
        end
        i+=10
    end
end

myfun206()
