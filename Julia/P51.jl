using Primes

function find_duplicates(x)
    s = Set(x)
    dups = []
    for i in s
        if count(x->x==i,x) > 1
            append!(dups, i)
        end
    end
    return dups
end

function check_replacements(n, pms, target)
    sn = [i for i in string(n)]
    if length(sn) == length(Set(sn))
        return false
    end

    dups = find_duplicates(sn)

    for k in dups
        count = 0
        for j in 0:9
            tn = parse(Int, join(replace(sn, k => string(j))))
            if tn in pms
                count += 1
            end
        end
        if count == target
            return true
            break
        end
    end
    return false
end

function myfun51(target)
    i = 2
    while true
        pms = primes(10^(i-1), (10^i - 1))
        for p in pms
            if check_replacements(p, pms, target)
                return p
            end
        end
        i+=1
    end
end

@time myfun51(8)
