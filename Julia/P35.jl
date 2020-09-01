using Primes

function is_circular_prime(n)
    sn = string(n)
    if ('5' in sn) || ('2' in sn) || ('4' in sn) || ('6' in sn) ||
        ('8' in sn) || ('0' in sn)
        return false
    end

    circular_combinations = [sn]
    l = length(sn)
    for i in 2:l
        push!(circular_combinations, join(vcat(sn[i:l], sn[1:(i-1)])))
    end

    for n in circular_combinations
        if !(isprime(parse(Int, n)))
            return false
        end
    end
    return true
end

function myfun35(D)
    count = 3
    for i in 7:2:D
        if is_circular_prime(Int(i))
            count += 1
        end
    end
    return count
end

@time myfun35(1e6)
