using DataFrames

names = CSV.read("/home/y227xie/Documents/GitHub/ProjectEuler/Julia/P22.txt",
    ; header=false)

name_list = []
for i in 1:ncol(names)
    push!(name_list, names[1,i])
end
name_list[1021] = "NANA"

snl = sort(name_list)

function myfun22(snl)
    res = 0
    for i in 1:length(snl)
        tn = snl[i]
        if i == 3638
            tn = ['N', 'A', 'N']
        end
        tsum = 0
        for j in tn
            tsum += (Int(j) - 64)
        end
        res += i*tsum
    end
    return res
end

myfun22(snl)
