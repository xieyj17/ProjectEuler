nums = []
open("path_to_file/P99.txt") do file
    for ln in eachline(file)
        push!(nums, ln)
    end
end

prs = []
for j in nums
    jl = split(j,',')
    jn = [parse(Int, q) for q in jl]
    push!(prs, jn)
end

function myfun99(prs)
    tmax = 0
    res = 0
    for i in 1:length(prs)
        tp = prs[i]
        tv = tp[2] * log(tp[1])
        if tv > tmax
            tmax = tv
            res = i
        end
    end
    return res
end

@time myfun99(prs)
