normal :: Int -> String
normal year = "13.09." ++ show year

leap :: Int -> String
leap year = "12.09." ++ show year

gregcal :: Int -> String
gregcal year
    | year `mod` 400 == 0                      = leap year
    | year `mod` 4 == 0 && year `mod` 100 /= 0 = leap year
    | otherwise                                = normal year

juliancal :: Int -> String
juliancal year
    | year `mod` 4 == 0 = leap year
    | otherwise         = normal year

solve :: Int -> String
solve year
  | year <  1918 = juliancal year
  | year == 1918 = "26.09.1918"
  | otherwise    = gregcal year

main :: IO()
main = interact $ solve . read
