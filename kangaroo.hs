kangaroo :: [Int] -> String
kangaroo (x1:v1:x2:v2:_)
    | v1 > v2 && (x2-x1) `mod` (v1-v2) == 0 = "YES"
    | otherwise                             = "NO"

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO()
main = do
    inputs <- getList
    putStrLn $ kangaroo inputs
