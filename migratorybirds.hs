import Data.List
import Data.Maybe

-- Assuming types range from 1 to 5 (inclusive)
-- as stated in the task
solve :: [Int] -> Int
solve l = (fromMaybe 0 $ elemIndex (maximum occurences) occurences)+1
    where occurences = [length $ filter(\x-> x == y) l | y <- [1..5]]

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO()
main = do
    getLine -- Useless input again
    input <- getList
    putStrLn $ show $ solve input
