
function myfun(M)
    ans = 2
    x1 = 1
    x2 = 2
    x = x2

    while x < M
         x = x1 + x2
        if x % 2 == 0
            ans = ans + x
        end
        x1 = x2
        x2 = x
    end

    return ans
end


myfun(4e6)
