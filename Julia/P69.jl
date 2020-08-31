using Primes

function phi_ratio(n)
    res = 1
    for i in 2:(n-1)
        if gcd(n,i) == 1
            res += 1
        end
    end
    return n/res
end

prime_list = primes(1000)

function myfun69(n, prime_list)
    num = 1
    i = 1
    while num <= n
        num *= prime_list[i]
        i+=1
    end
    res = num / prime_list[i-1]
    return res
end

myfun69(1000000, prime_list)
