print("Enter a positive number: ")
n = parse(BigInt, readline())

if signbit(n) || n == 0
    print("Negative numbers and nul are not allowed.")
else
    s = 0
    while n != 1
        if iseven(trunc(BigInt, n))
            global n /= 2
        else
            global n = n * 3 + 1
        end
        global s += 1
    end
    print("Finished in " * string(s) * " steps.")
end