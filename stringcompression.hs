import Data.List

solve :: String -> [(Char, Int)]
solve str = zip (map head $ g) (map (\x -> length x ) $ g)
    where g = group str
 

printTuple :: (Char, Int) -> String
printTuple (c, i)
    | i == 1 = [c]
    | otherwise = [c] ++ show i

main :: IO()
main = do
    str <- getLine
    putStrLn
        $ concat
        $ map printTuple
        $ solve str
