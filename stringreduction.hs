solve :: String -> String
solve str = foldl 
    (\seen x -> if x `elem` seen 
    then
        seen
    else
        seen++[x])
    [] str

main :: IO()
main = interact solve
