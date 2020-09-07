function count_paths(m, n)
    p = m+1
    q = n+1
    counts = [[1 for i in 1:p] for j in 1:q]
    for i in 2:p
        for j in 2:q
            counts[i][j] = counts[i-1][j] + counts[i][j-1]
        end
    end
    return counts[p][q]
end

count_paths(20,20)
