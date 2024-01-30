const readline = require("readline-sync"); 

console.log("Enter a number");
let num = Number(readline.question());
for(let i = 2; i < Math.sqrt(num)+1; i++)
{
    if(num % i == 0)
    {
        console.log('%d is not prime: %d*%d', num, i, num/i);
        process.exit()
    }
}
console.log('%d is prime', num);