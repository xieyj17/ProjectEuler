function myfun6(n)
    s1 = sum([i^2 for i in 1:n])
    s2 = (sum(1:n))^2
    return abs(s2 - s1)
end

myfun6(100)
