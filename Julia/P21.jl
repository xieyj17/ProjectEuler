function sum_of_divisors(n)
    bound = Int(floor(sqrt(n)))
    res = 1
    for i in 2:bound
        if n % i == 0
            res += i
            res += (n/i)
        end
    end
    return Int(res)
end

function myfun21(m)
    res = 0
    for i in 6:m
        t1 = sum_of_divisors(i)
        t2 = sum_of_divisors(t1)
        if (t2 == i) & (t1 != i)
            res += i
        end
    end
    return res
end

@time myfun21(10000)
