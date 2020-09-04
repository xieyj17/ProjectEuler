using Primes

function consec_sum(pms, i, D)
    sp = length(pms) - i + 1
    for k in 1:sp
        csum = sum(pms[k:(k+i-1)])
        if csum > D
            return false
        end
        if isprime(csum)
            return csum
        end
    end
    return false
end

function myfun50(D)
    pms = primes(D)
    i = 10000 # since the summation of the first 10000 primes > 1e6
    while (i>0)
        cs = consec_sum(pms, i, D)
        if (cs>0)
            return cs
        end
        i -= 1
    end
end

@time myfun50(1000000)
