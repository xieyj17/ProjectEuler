using Primes

function is_truncatable_prime(n)
    if !isprime(n)
        return false
    end
    sn = string(n)
    rsn = reverse(sn)
    l = length(sn)-1
    for i in 1:l
        p1 = parse(Int, sn[1:i])
        p2 = parse(Int, reverse(rsn[1:i]))
        if !isprime(p1) || !isprime(p2)
            return false
        end
    end
    return true
end

function myfun37(d, prime_list)
    count = 0
    res = 0
    i = 5
    while count < d
        if is_truncatable_prime(prime_list[i])
            res += prime_list[i]
            count += 1
        end
        i+=1
    end
    return res
end

prime_list = primes(1000000)

@time myfun37(11, prime_list)
