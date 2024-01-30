using System;
namespace PrimeCheck
{
    class Prime
    {         
        static void Main(string[] args)
        {
            ulong num;
            Console.WriteLine("Enter a number");
            num = Convert.ToUInt64(Console.ReadLine());
            for (ulong i = 2; i < Math.Sqrt(num) + 1; i++) 
            {
                if (num % i == 0) 
                {
                    Console.WriteLine(String.Format("{0} is not prime: {1}*{2}", num, i, num/i));
                    return;
                }
            }
            Console.WriteLine(String.Format("{0} is prime", num));
        }
    }
}