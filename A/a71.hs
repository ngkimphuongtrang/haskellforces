import Data.List
import System.IO

solve:: String ->IO()
solve xs
    | length xs <= 10 = putStrLn xs
    | otherwise = putStrLn ([head xs] ++ show (length xs-2) ++ [last xs])

loop :: Int -> IO ()
loop 0 = putStr ""
loop n = do{
    xs <- getLine;
    solve xs;
    loop(n-1);
}

main = do
    line <- getLine
    let n = read line :: Int
    loop n