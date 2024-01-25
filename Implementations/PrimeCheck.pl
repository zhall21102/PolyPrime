print "Enter a number\n";
my $num = <STDIN>;
for my $i (2..sqrt($num))
{
	if ($num % $i == 0)
	{
	    printf("%d is not prime: %d*%d\n", $num, $i, $num / $i);
	    exit;
	}
}
printf("%d is prime\n1", $num);