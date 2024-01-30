#include "stdio.h"
#include "math.h"

int main()
{
    unsigned long long num;
    printf("Enter a number\n");
    scanf("%llu", &num);
    for(unsigned long long i = 2; i < sqrt(num) + 1; i++)
    {
        if(num % i == 0)
        {
            printf("%llu is not prime: %llu * %llu\n", num, i, num / i);
            return 0;
        }
    }
    printf("%llu is prime\n", num);
    return 0;
}