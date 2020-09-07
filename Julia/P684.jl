function small_s(n)
    if n < 10
        return n
    end
    n_of_digits = Int(ceil(n/9))-1
    rm = n - 9*(n_of_digits)
    r = string(rm)
    for i in 1:n_of_digits
        r = r*"9"
    end
    return r
end

function big_S(k)
    res = 0
    for i in 1:k
        res += small_s(i)
    end
    return res
end

function gen_fib_list(d)
    res = []
    a = 0
    b = 1
    i = 2
    while i <= d
        r = b
        b = a+b
        a = r
        append!(res, b)
        i+=1
    end
    return res
end

function myfun684()
    fibs = gen_fib_list(90)
    s_list = []
    for i in fibs
        println(i)
        append!(s_list, small_s(i))
    end
end
