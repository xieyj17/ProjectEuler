using Formatting

function find_sqrt_int(m)
    #m = big(m)
    tn = ceil((1 + sqrt(1 + 2 * m * (m-1))) / 2 )
    while true
        m = (1 + sqrt(1 + 8 * tn * (tn-1))) / 2
        if isinteger(m)
            return tn
        end
        tn+= 1
    end
end

@time e = find_sqrt_int(big(1000000000000))


format(e)
