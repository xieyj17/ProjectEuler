function is_palindrome(n)
    s = string(n)
    l = length(s)
    p = Int(floor(l / 2))
    ans = true
    for i = 1:p
        if s[i] != s[l-i+1]
            ans = false
            break
        end
    end
    return ans
end

function myfun4(ub, lb)
    res = []
    for i = ub:-1:lb
        for j = ub:-1:i
            if is_palindrome(i * j)
                append!(res, i * j)
                #return i*j
                #break
            end
        end
    end
    return maximum(res)
end

myfun4(999, 100)
