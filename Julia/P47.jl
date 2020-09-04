using Primes

function myfun47()
    i = 644
    while true
        if length(factor(Set, i+3)) != 4
            i += 4
            continue
        end

        if length(factor(Set, i+2)) != 4
            i += 3
            continue
        end

        if length(factor(Set, i+1)) != 4
            i += 2
            continue
        end

        if length(factor(Set, i)) != 4
            i += 1
            continue
        end

        return i
    end
end

@time myfun47()
