Write-output "Enter a number"
[uInt64] $num= Read-Host 
for ($i = 2; $i -le [math]::Sqrt($num)+1; $i++)
{
    $mod = $num % $i
    if($mod -eq 0)
    {
        $div = $num / $i
        Write-output "$num is not prime: $i*$div"
        exit
    }
}
Write-output "$num is prime"