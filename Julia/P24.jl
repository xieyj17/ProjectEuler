function myfun24(m)
    r = m
    kr = r
    i = 9
    d = []
    while r > 0
        r = kr % factorial(i)
        append!(d, div(kr, factorial(i))-1)
        kr = r
        i -= 1
    end
end


r % factorial(4)

div(r, factorial(4))
