Imports System

Module Module1
    Sub Main()
        Console.WriteLine("Enter a number")
        Dim numStr = Console.ReadLine()
        Dim num = CType(numStr, ULong)
        For i As ULong = 2 To Math.Sqrt(num)
            If num Mod i = 0 Then
                Console.WriteLine(num & " is not prime: " & i & "*" & num/i)
                End
            End If
        Next
        Console.WriteLine(num & " is prime")
    End Sub
End Module