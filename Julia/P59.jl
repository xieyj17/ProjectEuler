using CSV

df = CSV.read("path_to_file/P59.txt"; header = false)

rc = convert(Array, df)

codes = []
for i in rc
    push!(codes, i)
end

function codes_to_chars(codes, password)
    encrpty_key = []
    for p in password
        append!(encrpty_key, Int(p))
    end

    res = 0

    for i in 1:length(codes)
        code_key = i%3
        if code_key == 0
            code_key = 3
        end
        res += xor(codes[i], encrpty_key[code_key])
    end

    return res

end

function check_passwords(codes)
    res = []
    for i in 97:116
        for j in 120
            for k in 112
                twords = join([Char(i), Char(j), Char(k)])
                tr = codes_to_chars(codes, twords)
                flag = true
                push!(res, [twords, tr])
            end
        end
    end
    return res
end

combines = check_passwords(codes)

for i in combines
    println(i)
end


for i in 97:122
    print(i)
    println(Char(xor(80,i)))
end
