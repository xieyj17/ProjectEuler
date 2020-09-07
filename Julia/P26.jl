function reciprocal_len(n)
    tn = collect(string(1/big(n)))
    tn = tn[4:(length(tn)-4)]
    rtn = reverse(tn)
    res = []
    for i in 1:(length(rtn)-1)
        res = rtn[1:i]
        rm = rtn[(i+1):length(rtn)]
        if length(res) <= length(rm)
            if !occursin(join(res), join(rm))
                #res == rtn[(i+1):(i+length(res))]
                break
            end
        else
            if !occursin(join(rm), join(res))
                break
            end
        end
    end
    return length(res)
end

function myfun26(d)
    tmax = 0
    tind = 0
    for i in 1:1000
        tl = reciprocal_len(i)
        if tl > tmax
            tmax = tl
            tind = i
            println(i)
        end
    end
    return tind
end

myfun26(1000)

occursin("Abc")
