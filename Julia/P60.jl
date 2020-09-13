using Combinatorics
using Primes

function five_primes(p)
    tcmbs = collect(combinations(p, 2))
    for w in tcmbs
        p1 = parse(BigInt, join([string(w[1]), string(w[2])]))
        p2 = parse(BigInt, join([string(w[2]), string(w[1])]))
        if !(isprime(p1) && isprime(p2))
            return false
        end
    end
    return true
end

function myfun60()
    d = 100
    while d<1e6
        pms = primes(d)
        combins = collect(combinations(pms, 5))
        for i in combins
            if five_primes(i)
                return (sum(i))
                break
            end
        end
        d*=10
    end
    return 0
end

myfun60()
#Threads.@threads
