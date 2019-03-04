permute :: String -> String
permute (s1:s2:s) = [s2] ++ [s1] ++ permute s
permute (s1:s2) = s2 ++ [s1]
permute _ = ""

main = do
    getLine -- useless input from task
    interact (unlines . map permute . lines)
