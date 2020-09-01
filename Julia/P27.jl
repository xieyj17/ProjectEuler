using Primes

function gen_fun(a, b)
    function tf(n)
        return n^2 + a*n + b
    end
    return tf
end

function myfun27()
    max_count = 0
    max_prod = 0
    max_a = 0
    max_b = 0
    for a in -999:999
        for b in -999:999
            f = gen_fun(a,b)
            n = 0
            count = 0
            while isprime(f(n))
                count += 1
                n += 1
            end
            if count > max_count
                max_count = count
                max_prod = a*b
                max_a = a
                max_b = b
            end
        end
    end
    return [max_prod, max_count, max_a, max_b]
end

@time myfun27()
