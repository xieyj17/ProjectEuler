function myfun25(n, k)
    fa = 1
    fb = 1
    i = 2
    counter = k
    while (counter < n)
        tf = fa + fb
        fa = fb
        fb = tf
        if log10(fb) > k
            fb = fb / 10
            fa = fa / 10
            counter += 1
        end
        i += 1
    end
    return i
end

@time myfun25(1000, 10)
