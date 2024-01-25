puts 'Enter a number'
num = gets
num ||= ''
num = num.chomp.to_i
for i in 2..Math.sqrt(num) do
        if num % i == 0
            print(num," is not prime: ",i,"*",num/i,"\n")
            return;
		end
end
    print(num," is prime\n")