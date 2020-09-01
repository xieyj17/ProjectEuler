function reciprocal_len(n)
    tn = string(n)
    tn = tn[7:(length(tn)-3)]
    tn = strip(tn, '0')
    res = []
    for i in 1:Int(floor(length(tn)/2))
        append!(res, tn[i])
        if join(res) == tn[(i+1):(i+length(res))]
            break
        end
    end
    return length(res)
end

function myfun26(d)
    tmax = 0
    tind = 0
    for i in 1:d
        tl = reciprocal_len(big(1) / big(i))
        if tl > tmax
            tmax = tl
            tind = i
        end
    end
    return tind
end

myfun26(1000)
