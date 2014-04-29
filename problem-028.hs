corners :: Int -> Int -> [Int]
corners s d = r ++ corners (last r) (d+2)
  where r = take 4 [s+d,s+d+d..]

nums :: [Int]
nums = 1:corners 1 2

main = print $ sum $ take 2001 $ nums
