solve :: (Ord a, Num a)=> [a] -> [a] -> [a] -> [a]
solve (a:as) (b:bs) [cuma,cumb]
  | a > b = solve as bs [cuma + 1, cumb]
  | a < b = solve as bs [cuma, cumb + 1]
  | otherwise = solve as bs [cuma,cumb]
solve _ _ x = x

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main = do
  line1 <- getList
  line2 <- getList
  putStrLn $ unwords $ map show $ solve line1 line2 [0,0]

