const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
})

readline.question("Enter a positive number: ", (n) => {
    n = parseInt(n)
    if (n < 1) {
        console.log("Negative numbers and nul are not allowed.")
    } else {
        let s = 0
        while (n != 1) {
            if (n % 2 == 0) {
                n /= 2
            } else {
                n = n * 3 + 1
            }
            s += 1
        }
        console.log(`Finished in ${s} steps.`)
        process.exit(0)
    }
})