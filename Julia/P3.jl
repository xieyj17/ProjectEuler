using Primes

function myfun3(N)
    n = Int(floor(sqrt(N))) + 1
    #prime_list = []
    #ans = 0
    for j in n:-2:1
        if isprime(j)
            if N % j == 0
                println(j)
                global res  = j
                break
            end            
            #append!(prime_list, j)
        end
    end
    return res
end

myfun3(600851475143)
