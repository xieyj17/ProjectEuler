function count_circile(i)
    gap = i-1
    sub_seq = [k for k in ((i-2)^2) : gap : (i^2)]
    res = sum(sub_seq) - sub_seq[1]
    return res
end

function myfun28(d)
    res = 1
    for i in 3:2:d
        res += count_circile(i)
    end
    return res
end

myfun28(1001)
