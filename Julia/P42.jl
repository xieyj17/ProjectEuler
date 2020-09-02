using CSV

words = CSV.read("path_to_file/P42.txt",
    ; header=false)

word_list = []

for i in 1:ncol(words)
    push!(word_list, words[1,i])
end

triangle_list = []
for i in 1:100
    append!(triangle_list, Int(0.5*i*(i+1)))
end

function myfun42(word_list, triangle_list)
    count = 0
    for w in word_list
        tsum = 0
        for cw in w
            tsum += Int(cw)-64
        end
        if tsum in triangle_list
            count += 1
        end
    end
    return count
end

@time myfun42(word_list, triangle_list)
