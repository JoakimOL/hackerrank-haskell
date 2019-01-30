import Data.List

solve :: (Ord a, Num a, Show a) => [a] -> Int
solve arr = length $ elemIndices (head $ reverse $ sort arr) arr

main :: IO()
main = do
    getLine -- we dont really need this input.
    input <- getLine
    putStrLn
        $ show
        $ solve
        $ map read
        $ words input
