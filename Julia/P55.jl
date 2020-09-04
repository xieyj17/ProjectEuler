function is_palindromic(n)
    return string(n) == reverse(string(n))
end

function is_Lychrel(n)
    i=50
    while i > 0
        sn = string(n)
        n = parse(BigInt, sn) + parse(BigInt, reverse(sn))
        if is_palindromic(n)
            return false
        end
        i -= 1
    end
    return true
end

function myfun54()
    res = 0
    for j in 1:10000
        if is_Lychrel(j)
            res += 1
        end
    end
    return res
end

myfun54()
