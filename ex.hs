solve :: (Floating a, Ord a) => a -> a -> a
solve x n
  | n > 0  = (x**n / (factorial n)) + solve x (n-1)
  | otherwise = 1

factorial x
  | x > 1     = x * factorial (x-1)
  | otherwise =1


start = do
  input <- getLine
  putStrLn $show $ solve (read input) 9

main = do
  lines <- getLine
  sequence $ [start | x <- [1.. read lines]]
