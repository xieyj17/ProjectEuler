using Primes

function is_permute(a, b, c)
    as = [i for i in string(a)]
    bs = [i for i in string(b)]
    cs = [i for i in string(c)]
    if sort(as) == sort(bs) == sort(cs)
        return true
    end
    return false
end

function myfun49()
    pms = primes(1488,3399)

    for i in pms
        if isprime(i+3330) && isprime(i+6660)
            if is_permute(i, i+3330, i+6660)
                return join(string(i),string(i+3300),string(i+6660))
            end
        end
    end
end

myfun49()
