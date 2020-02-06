solve :: String -> String -> String
solve s1 s2 = concat $ [[x,y] | (x,y) <- zip s1 s2]

main = do
    s1 <- getLine
    s2 <- getLine
    putStrLn $ solve s1 s2
