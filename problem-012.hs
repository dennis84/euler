import Data.List (nub)

triangles :: [Int]
triangles = scanl (+) 1 [2..]

divisors :: Int -> [Int]
divisors n = nub $ concat $ [[x, quot n x]
    | x <- [1..l], n `rem` x == 0]
  where l = round $ sqrt $ fromIntegral n

main = print $ head $ [x | x <- triangles, (length $ divisors x) - 1 >= 500]
