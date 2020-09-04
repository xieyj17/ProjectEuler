function is_triangle(w)
    tw = (-1 + sqrt(1+8*w)) / 2
    if tw % 1 == 0
        return true
    else
        return false
    end
end

function is_pentagon(w)
    tw = (1 + sqrt(1+24*w)) / 6
    if tw % 1 == 0
        return true
    else
        return false
    end
end

function gen_hexagon(n)
    return n*(2n-1)
end

function myfun45()
    i = 144
    while true
        tn = gen_hexagon(i)
        if is_pentagon(tn) && is_triangle(tn)
            return tn
        end
        i+= 1
    end
end

myfun45()
