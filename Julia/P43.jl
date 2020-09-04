using Combinatorics

function is_divisible(sn)
    pm_list = [2,3,5,7,11,13,17]
    #sn = string(n)
    for i in 2:8
        tn = parse(Int, sn[i:(i+2)])
        if tn % pm_list[i-1] != 0
            return false
        end
    end
    return true
end

function myfun43()
    digit_list = [string(i)[1] for i in 0:9]
    digit_list = digit_list |> collect
    all_permutes = permutations(digit_list)
    res = 0
    for i in all_permutes
        if is_divisible(join(i))
            res += parse(Int, join(i))
        end
    end
    return res
end

@time myfun43()
