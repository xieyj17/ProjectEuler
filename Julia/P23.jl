function sum_of_divisors(n)
    #bound = Int(floor(sqrt(n-1)))
    res = 1
    for i in 2:(n-1)
        if n % i == 0
            res += i
            #res += (n/i)
            #print(i)
        end
    end
    return Int(res)
end

function abundant_list(ub)
    res = [12]
    for i in 13:ub
        if i < sum_of_divisors(i)
            append!(res, i)
        end
    end
    return res
end


ab_list = abundant_list(28123)

function is_sum(n, ab_list)
    nab = [i for i in ab_list if i < n]
    for k in nab
        if (n-k) in nab
            return true
        end
    end
    return false
end

function myfun23(m, ab_list)
    res = sum(1:23)
    for i in 25:m
        if !(is_sum(i, ab_list))
            res += i
        end
    end
    return res
end

@time myfun23(28123, ab_list)
