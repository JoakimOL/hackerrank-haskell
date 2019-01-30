solve :: (Integral a, Fractional b) => [a] -> [b]
solve input = [above / len, below / len, zero / len]
    where len = fromIntegral $ length input
          above = fromIntegral $ length $ filter (\x -> x > 0) input
          below = fromIntegral $ length $ filter (\x -> x < 0) input
          zero  = len - (above + below)

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO[ () ]
main = do
    _ <- getLine
    input <- getList
    sequence $ map (putStrLn . show) $ solve input

