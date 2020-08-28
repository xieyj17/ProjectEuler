function is_prime(n)
    if n == 1
        return false
    end
    if n == 2
        return true
    end
    bound = Int(ceil(sqrt(n)))
    for i in 2:bound
        if n % i == 0
            return false
        end
    end
    return true
end

function myfun10(n)
    ans = 2
    for i in 3:2:n
        if is_prime(i)
            ans += i
        end
    end
    return ans
end

format(myfun10(2e6))
