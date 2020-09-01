function myfun33()
    des = [i for i in 2:9]
    tns = 1
    tds = 1
    for k in des
        for i in 1:(k-1)
            tf = i//k
            for w in 1:9
                td = parse(Int, join([string(w), string(k)]))
                tn = parse(Int, join([string(i), string(w)]))
                if tf == tn//td
                    tns *= tn
                    tds *= td
                end
            end
        end
    end
    return tns // tds
end

myfun33()
