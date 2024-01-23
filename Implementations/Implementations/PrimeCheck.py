import math

print("Enter a number")
#num = int(input())
num = 2999622427590709

for i in range(2,int(math.sqrt(num))):
    if num % i == 0:
        print(f'{num} is not prime: {i}*{num//i}')
        exit()
print(f'{num} is prime')