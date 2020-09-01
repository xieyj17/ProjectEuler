penny_pool = [1,2,5,10,20,50,100,200]

function myfun31(n, penny_pool)
    lens = [Int(n/i+1) for i in penny_pool]
    sums = [(i-1) for i in 1:lens[1]]
    for j in 2:length(lens)
        tc = [penny_pool[j]*(i-1) for i in 1:lens[j]]
        new_sum = [a+b for a in sums for b in tc]
        sums = [p for p in new_sum if p <= n]
    end
    res = [p for p in sums if p == n]
    return length(res)
end

@time myfun31(200, penny_pool)
