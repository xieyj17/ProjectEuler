function is_pentagon(w)
    tw = (1 + sqrt(1+24*w)) / 6
    if tw % 1 == 0
        return true
    else
        return false
    end
end


function myfun44b(D)
    res = D^3
    for i in 1:D
        for j in (i+1):(D+1)
            P1 = i*(3*i-1)/2
            P2 = j*(3*j-1)/2
            if is_pentagon(abs(P1-P2)) && is_pentagon(abs(P1+P2))
                td = abs(P1-P2)
                if td < res
                    res = td
                end
            end
        end
    end
    return res
end

function myfun44(D)
    P = [i*(3*i-1)/2 for i in 1:D]
    for j in 2:D
        for i in 1:(j-1)
            if ((P[i] + P[j]) in P) && ((P[j] - P[i]) in P)
                return P[j] - P[i]
            end
        end
    end
end

myfun44(10000)
