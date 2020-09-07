nums = []
open("/home/y227xie/Documents/GitHub/ProjectEuler/Julia/P79.txt") do file
    for ln in eachline(file)
        push!(nums, ln)
    end
end

a = [i[1] for i in nums]
b = [i[2] for i in nums]
c = [i[3] for i in nums]

sa = Set(a)
sb = Set(b)
sc = Set(c)

setdiff(sc, sb)
