function is_double_palindromic(n)
    dec = string(n)
    bin = string(n, base = 2)
    if (dec == reverse(dec)) && (bin == reverse(bin))
        return true
    else
        return false
    end
end


function myfun36(D)
    res = 0
    for i in 1:D
        if is_double_palindromic(Int(i))
            res += i
        end
    end
    return res
end

@time myfun36(1e6)
