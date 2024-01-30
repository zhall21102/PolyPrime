import java.util.Scanner;
import java.lang.Math;
public class PrimeCheck 
{
    public static void main(String[] args) throws java.io.IOException
    {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter a number");
        long num = input.nextLong();
        for (long i = 2; i < Math.sqrt(num)+1; i++) 
        {
            if (num % i == 0) 
            {
                System.out.println(num + " is not prime: " + i + "*" + num/i);
                return;
            }
        }
        System.out.println(num + " is prime");
    }
}