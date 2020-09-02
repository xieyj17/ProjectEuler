function is_pandigital(i, d)
    ns = []
    target = [string(i)[1] for i in 1:9]
    for j in 1:d
        append!(ns, string(i*j))
    end
    return target == sort(ns)
end

function myfun38()
    res = []
    for i in 5000:9999
        if is_pandigital(i,2)
            tn = []
            for j in 1:2
                append!(tn, string(i*j))
            end
            append!(res, parse(Int, join(tn)))
        end
    end
    for i in 101:333
        if is_pandigital(i,3)
            tn = []
            for j in 1:3
                append!(tn, string(i*j))
            end
            append!(res, parse(Int, join(tn)))
        end
    end
    for i in 25:33
        if is_pandigital(i,4)
            tn = []
            for j in 1:4
                append!(tn, string(i*j))
            end
            append!(res, parse(Int, join(tn)))
        end
    end
    for i in 2:9
        if is_pandigital(i,5)
            tn = []
            for j in 1:5
                append!(tn, string(i*j))
            end
            append!(res, parse(Int, join(tn)))
        end
    end
    return maximum(res)
end

myfun38()
