function is_prime(n)
    if n == 1
        return false
    end
    if n == 2
        return true
    end
    bound = Int(ceil(sqrt(n)))
    for i in 2:bound
        if n % i == 0
            return false
        end
    end
    return true
end

function myfun7(k)
    i = 1
    loc = 3
    while i < k
        if is_prime(loc)
            i += 1
        end
        loc += 2
    end
    return loc-2
end

@time myfun7(10001)
