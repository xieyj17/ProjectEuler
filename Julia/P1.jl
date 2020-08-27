function myfun1(N)
    ans = 0
    for i in 1:2:(N-1)
        if (i %3 == 0) || (i %5 == 0)
            ans += i
        end
    end
    return ans
end

myfun1(1000)
