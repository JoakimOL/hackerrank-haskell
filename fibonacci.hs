module Main where

fib n = generateFib !! (n-1)
    where generateFib = 0:1:zipWith(+) generateFib(tail(generateFib))

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input

