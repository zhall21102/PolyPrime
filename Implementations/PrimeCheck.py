import math

print("Enter a number")
num = int(input())
for i in range(2,int(math.sqrt(num))+1):
    if num % i == 0:
        print(f'{num} is not prime: {i}*{num//i}')
        exit()
print(f'{num} is prime')