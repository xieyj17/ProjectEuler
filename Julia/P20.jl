@time begin
    z = string(factorial(big(100)))
    ints = [parse(Int, i) for i in z]
    sum(ints)
end
