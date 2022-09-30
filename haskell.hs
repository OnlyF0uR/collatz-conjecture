-- So, now I do know that this is not really pretty
-- it does however proofs the essential concept

collatz :: Integer -> Integer -> IO()
collatz n t =
    if n /= 1
        then
            if (mod) n 2 == 0
                then
                    collatz ((div) n 2) (t + 1)
            else
                collatz (n * 3 + 1) t
    else
        putStrLn ("Finished in " ++ show t ++ " steps.")

main :: IO()
main = do
    putStr "Enter a positive number: "
    num <- getLine

    let a = read num :: Integer
    collatz a 1
