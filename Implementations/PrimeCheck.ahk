#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

InputBox, num, PrimeCheck, Enter a number:, , 300, 150
i := 2
while i < Sqrt(num)+1
{
    if Mod(num,i) == 0
    {
        div := num // i
        MsgBox, %num% is not prime: %i%*%div%
        Exit
    }
    i++
}
MsgBox, %num% is prime