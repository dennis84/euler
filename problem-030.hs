import Data.Char (digitToInt)

main = print . sum $ [x | x <- [2..295245], check x]

check :: Int -> Bool
check x = x == foldl (\a n -> a + (digitToInt n)^5) 0 (show x)
