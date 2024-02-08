package main

import "core:fmt"
import "core:os"

pow :: proc(a:u128, b:u128) -> u128
{
    i : u128 = b
    total: u128 = 1
    for i > 0
    {
        total = total * a
        i -= 1
    }
    return total
}
sqrt :: proc(n:u128) -> u128
{
    i : u128 = 1
    total : u128
    total = 1
    for total < n
    {
        i += 1
        total = i * i
    }
    return i
}

main :: proc() 
{
	buf: [256]byte
	fmt.println("Please enter some text:")
	s, err := os.read(os.stdin, buf[:])
	str := string(buf[:s])
    num: u128 = 0
    power: u128 = 0
    it := len(str)-2
    for it >= 0
    {
        num = num + u128((str[it] - '0')) * pow(10,power);
        power += 1
        it -= 1
    }
    
    i : u128 = 2;
    for i < sqrt(num)+1
    {
        if num % i == 0
        {
            fmt.println(num, "is not prime:", i, "*", num/i)
            return;
        }
        i += 1
    }
	fmt.println(num, "is prime")
}