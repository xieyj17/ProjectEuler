single_digits = ["one", "two", "three", "four", "five",
    "six", "seven", "eight", "nine"]

tens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen",
    "seventeen", "eighteen", "nineteen"]

mtens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

function word_selector(n)
    if n == 1000
        return "onethousand"
    end
    hund = div(n, 100)
    s = ""
    if hund != 0
        s = s * single_digits[hund] * "hundred"
        tend = div(n - hund*100, 10)
        if tend == 0
            dd = n - hund*100
            if dd > 0
                s = s * "and" * single_digits[dd]
            else
                s = s
            end
        elseif tend == 1
            dd = n - hund*100 - 10 + 1
            s = s * "and" * tens[dd]
        else
            dd = n - hund*100 - 10*tend
            if dd != 0
                s = s * "and" * mtens[tend-1] * single_digits[dd]
            else
                s = s * "and" * mtens[tend-1]
            end

        end
    else
        tend = div(n, 10)
        dd = n - tend*10
        if tend == 0
            s = s*single_digits[dd]
        elseif tend == 1
            s = s*tens[dd+1]
        else
            if dd != 0
                s = s * mtens[tend-1] * single_digits[dd]
            else
                s = s * mtens[tend-1]
            end
        end
    end
end


function myfun17(m)
    res = 0
    for i in 1:m
        res += length(word_selector(i))
    end
    return res
end

@time myfun17(1000)
