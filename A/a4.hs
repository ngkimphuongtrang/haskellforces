main = do
    line <- getLine
    let w = read line :: Int
    if w `rem` 2 == 1 || w == 2
        then putStrLn "NO"
    else putStrLn "YES"