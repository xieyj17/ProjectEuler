function myfun25(n)
    fa = 1
    fb = 1
    i = 2
    counter = 0
    while (log10(fb) < (n-counter))
        tf = fa + fb
        counter += 1
        fa = round(fb / 10, digits = 10)
        fb = round(tf / 10, digits = 10)
        i += 1
    end
    return i
end

myfun25(4)

function myfunt(n)
    fa = 1
    fb = 1
    i = 2
    counter = 0
    while (log10(fb) < (n))
        tf = fa + fb
        counter += 1
        fa = fb
        fb = tf
        i += 1
    end
    return i
end

myfunt(4)
