#include "iostream"
#include "math.h"

int main()
{
    unsigned long long num;
    std::cout << "Enter a number" << std::endl;
    //std::cin >> num;
    num = 2999622427590709;
    for(unsigned long long i = 2; i < sqrt(num) + 1; i++)
    {
        if(num % i == 0)
        {
            std::cout << num << " is not prime: " << i << "*" << num / i;
            return 0;
        }
    }
    std::cout << num << " is prime";
    return 0;
}