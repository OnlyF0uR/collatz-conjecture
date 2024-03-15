fn main() {
    println!("Enter a positive number: ");
    let mut input = String::new();
    std::io::stdin().read_line(&mut input).unwrap();

    match input.trim().parse::<u32>() {
        Ok(mut n) => {
            let mut steps = 0;

            while n != 1 {
                steps += 1;

                if n % 2 == 0 {
                    n /= 2;
                } else {
                    n = 3 * n + 1;
                }
            }

            println!("Finished in {} steps.", steps);
        }
        Err(_) => {
            println!("Invalid input.");
        }
    }
}
