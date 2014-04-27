isPrime :: Int -> Bool
isPrime n = null [x | x <- [2..floor $ sqrt $ fromIntegral n], n `rem` x == 0]

primes :: Int -> Int -> [Int]
primes a b = takeWhile isPrime [abs $ formula n a b | n <- [0..]]

formula :: Int -> Int -> Int -> Int
formula n a b = n^2 + a*n + b

main = print $ (snd . maximum) [(length $ primes a b, a*b)
  | a <- [-999..999], b <- [0..999]]
