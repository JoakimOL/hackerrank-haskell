import Data.List
solve :: (Num a, Show a, Ord a) => [a] -> [a]
solve arr = [minimum list, maximum list]
    where list = map sum $ filter (\x -> length x == 4 ) $ subsequences arr

main :: IO()
main = do
    input <- getLine
    putStrLn $ unwords $ map show $ solve $ map read $ words input
