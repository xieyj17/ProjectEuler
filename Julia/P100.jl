using Formatting
using Decimals

function find_sqrt_int(m)
    tn = ceil((1 + sqrt(1 + 2 * m * (m-1))) / 2 )
    tn = big(parse(Int64, format(tn)))
    while true
        m = (1 + sqrt(1 + 8 * tn * (tn-1))) / 2
        if isinteger(m)
            return tn
        end
        tn+= 1
    end
end

m = big(1e12)
@time e = find_sqrt_int(1e12)


format(e)
