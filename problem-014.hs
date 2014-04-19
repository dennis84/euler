import Data.List (maximumBy)
import Data.Function (on)

collatz :: Int -> [Int]
collatz n
  | n == 1    = [n]
  | even n    = n : collatz (div n 2)
  | otherwise = n : collatz (3 * n + 1)

main = print $ head $ maximumBy (compare `on` length) $
         [collatz x | x <- [1..1000000]]
