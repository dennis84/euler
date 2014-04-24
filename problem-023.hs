import Data.IntSet (toList, fromList)

abundant :: Int -> Bool
abundant n = n < (sum $ divisors n)

unique :: [Int] -> [Int]
unique = toList . fromList

divisors :: Int -> [Int]
divisors n = (1:) . unique $ concat [[x, div n x]
    | x <- [2..l], n `rem` x == 0 ]
  where l = floor . sqrt . fromIntegral $ n

sums :: [Int]
sums = unique $ [a+b | a <- as, b <- as, b >= a, a+b <= 23123]
  where as = filter abundant [1..23123]

main = print $ sum [1..23123] - sum sums
