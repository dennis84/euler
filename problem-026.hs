isRecurring :: Int -> Bool
isRecurring n = n `rem` 2 /= 0 && n `rem` 5 /= 0

clist :: Int -> Int -> [Int]
clist n d
    | r <= 1    = [r]
    | otherwise = r:clist (r*10) d
  where r = rem n d

clength :: Int -> Int
clength n = length $ clist 10 n

main = print $ (snd . maximum) [(clength n,n) | n <- [1..1000], isRecurring n]
