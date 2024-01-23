import std.stdio, std.math;

void main()
{
    writeln("Enter a number");
    ulong num;
    //readf(" %d", &num);
    num = 2999622427590709;
    for(ulong i = 2; i < sqrt(real(num))+1; i++)
    {
        if(num % i == 0)
        {
            writef("%d is not prime: %d*%d\n", num, i, num / i);
            return;
        }
    }
    writef("%d is prime\n", num);
}