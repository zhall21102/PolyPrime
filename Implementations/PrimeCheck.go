package main

import (
    "fmt"
    "math/big"
)

func main() {
    num := big.NewInt(0)
    sqrt := big.NewInt(0)
    tmp := big.NewInt(0)
    fmt.Println("Enter a number")
    str := ""
    fmt.Scan(&str)
    num.SetString(str, 10)
    for  i := big.NewInt(2); i.Cmp(sqrt.Add(sqrt.Sqrt(num), big.NewInt(1))) == -1; i.Add(i, big.NewInt(1)) {
        tmp.Mod(num, i)
        if  tmp.Cmp(big.NewInt(0)) == 0 {
            fmt.Print(num, " is not prime: ", i, "*", tmp.Div(num, i), "\n")
            return
        }
    }
    fmt.Println(num, "is prime")
    return
}
