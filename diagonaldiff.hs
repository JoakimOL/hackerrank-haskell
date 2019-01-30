solve :: [[Int]] -> Int
solve (b:bs)     = solveInner bs (head b) (head $ reverse b) 1

solveInner :: [[Int]] -> Int -> Int -> Int -> Int
solveInner (b:bs) acc1 acc2 pos = solveInner bs acc1_up acc2_up (pos+1)
    where acc1_up = acc1 + (head $ drop pos b)
          acc2_up = acc2 + (head $ drop pos $ reverse b)
solveInner _ acc1 acc2 _        = abs $ acc1-acc2

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO()
main = do
    dimensions <- getLine
    let matrix_dirty = sequence [getList::IO[Int] | x <-[1..read dimensions]]
    matrix <- matrix_dirty
    putStrLn $ show $ solve matrix
