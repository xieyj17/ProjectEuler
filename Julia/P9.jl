function myfun9(n)
    lb = Int(ceil(n/3))
    ub = Int(ceil(n/2))
    for c in lb:ub
        for a in 1:(c-1)
            b = (n-a-c)
            if (c^2 == (a^2 + b^2))
                return a*b*c
                break
            end
        end
    end
end

myfun9(1000)
