stairs :: Int -> Int -> String
stairs n level
  | n > level = (duplicate " " (n-level))++ (duplicate "#" (level))++ "\n" ++ (stairs n (level+1))
  | otherwise = duplicate "#" n

duplicate :: String -> Int -> String
duplicate string n = concat $ replicate n string

main = do
    steps <- getLine
    let a = stairs (read steps) 1
    putStrLn a
