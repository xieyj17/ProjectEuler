using Combinatorics
using Primes

function find_max_prime(n)
    digit_list = [string(i)[1] for i in 1:n]
    digit_list = digit_list |> collect
    all_permutes = permutations(digit_list)
    res = []
    for i in all_permutes
        if isprime(parse(Int, join(i)))
            append!(res, parse(Int, join(i)))
        end
    end
    return maximum(res)
end

function myfun41()
    i = 9
    while true
        try
            return find_max_prime(i)
        catch
            i-=1
        end
    end
end

myfun41()
