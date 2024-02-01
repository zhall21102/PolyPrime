import kotlin.math.sqrt
import kotlin.system.exitProcess
fun main() 
{
    println("Enter a number")
    val num = readLine()!!.toULong()
    for (i in 2uL..sqrt(num.toDouble()).toULong())
    {
        if (num % i == 0uL)
        {
            println("$num is not prime: $i*${num / i}")
            exitProcess(0)
        }
    }
    println("$num is prime")
}