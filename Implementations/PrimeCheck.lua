print("Enter a number")
local num = io.read()
for i = 2,math.sqrt(num),1 
do 
    if (num % i == 0) then
        print(string.format('%d is not prime: %d*%d', num, i, num/i))
        os.exit()
    end
end
print(string.format("%d is prime", num))