using Primes

function count_diag_primes(i)
    gap = i-1
    sub_seq = [k for k in ((i-2)^2) : gap : (i^2)]
    sub_seq = sub_seq[2:length(sub_seq)]
    res = sum([1 for i in sub_seq if isprime(i)])
    return res
end

function myfun58(r)
    rat = 1
    counts = 0
    diags = 0
    i = 3
    while rat > r
        counts += count_diag_primes(i)
        diags += 4
        rat = counts / diags
        i+=2
    end
    return (i-2)
end

@time myfun58(0.1)
