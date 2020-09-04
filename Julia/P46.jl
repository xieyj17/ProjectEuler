using Primes

function Goldbach_is_correct(n)
    pms = primes(n)
    for i in pms
        if sqrt((n-i)/2) % 1 == 0
            return true
        end
    end
    return false
end

function myfun46()
    i = 35
    while true
        if !(isprime(i)) && !(Goldbach_is_correct(i))
            return i
        end
        i += 2
    end
end

myfun46()
