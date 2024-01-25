print("Enter a number\n")
num = parse(UInt64, readline())
for i in 2:floor(sqrt(num))+1
    if num % i == 0
        print(num," is not prime: ", convert(UInt64, i),"*",convert(UInt64, num/i),"\n")
        exit()
    end
end
print(num," is prime\n")
