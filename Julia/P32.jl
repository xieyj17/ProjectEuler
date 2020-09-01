using Combinatorics

digit_list = ['1','2','3','4','5','6','7','8','9']
 |> collect

function is_prod(n)
    # four possible scenario
    # 1*4 = 4
    # 4*1 = 4
    # 2*3 = 4
    # 3*2 = 4
    r = parse(Int, join(n[6:9]))

    a1 = parse(Int, join(n[1]))
    a2 = parse(Int, join(n[2:5]))
    if a1*a2 == r
        return true
    end

    b1 = parse(Int, join(n[1:4]))
    b2 = parse(Int, join(n[5]))
    if b1*b2 == r
        return true
    end

    c1 = parse(Int, join(n[1:2]))
    c2 = parse(Int, join(n[3:5]))
    if c1*c2 == r
        return true
    end

    d1 = parse(Int, join(n[1:3]))
    d2 = parse(Int, join(n[4:5]))
    if d1*d2 == r
        return true
    end

    return false
end


function myfun32(digit_list)
    all_permutes = permutations(digit_list)
    prod_list = []
    for i in all_permutes
        if is_prod(i)
            tr = parse(Int, join(i[6:9]))
            if !(tr in prod_list)
                append!(prod_list, tr)
            end
        end
    end
    return sum(prod_list)
end

@time myfun32(digit_list)
