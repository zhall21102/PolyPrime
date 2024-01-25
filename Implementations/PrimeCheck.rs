use std::io;
fn main() 
{
	println!("Enter a number");
    let mut input_line = String::new();
    io::stdin().read_line(&mut input_line).expect("Failed to read line");
    let num: u64 = input_line.trim().parse().expect("Not an integer");
	let num_float: f64 = num as f64;
    for i in 2..num_float.sqrt() as u64+1
    {
        if num % i == 0
        {
            println!("{} is not prime: {}*{}", num, i, num/i);
            return;
        }
    }
    println!("{} is prime", num);
}