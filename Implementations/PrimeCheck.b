getstr(s)
{
    auto c,i;
    i = 0;
    while ((s[i]=getchar()) != '*n') 
    {
        i++;
    }
    return(s) ;
}

putstr(s)
{
    auto i;
    i = 0;
    while(s[i] != 10)
    {
        putchar(s[i]);
        i++;
    }
    putchar('*n');
}

strLen(s)
{
    auto i;
    i = 0;
    while(s[i] != 10)
    {
        i++;
    }
    return(i);
}

pow(a,b)
{
    auto total;
    total = 1;
    while(b > 0)
    {
        total = total * a;
        b--;
    }
    return(total);
}

strToInt(s)
{
    auto total, i, power;
    total = 0;
    power = 0;
    i = strLen(s)-1;
    while(i >= 0)
    {
        total = total + (s[i] - '0') * pow(10,power);
        power++;
        i--;
    }
    return(total);
}

sqrt(n)
{
    auto i, total;
    i = 1;
    total = 1;
    while(total < n)
    {
        i++;
        total = i * i;
    }
    return(i);
}
   
main( ) 
{
    auto num;
    printf("Enter a number*n");
    auto numStr[20];
    numStr = getstr(numStr);
    num = strToInt(numStr);
    auto i;
    i = 2;
    while(i < sqrt(num))
    {
        if(num%i==0)
        {
            printf("%d is not prime: %d**%d*n", num, i, num/i);
            return;
        }
        i++;
    }
    printf("%d is prime*n", num);
}
