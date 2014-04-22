choice :: Int -> Int -> [Int] -> [[Int]]
choice n i xs
    | i == 0    = mkChoices 1
    | otherwise = mkChoices 2
  where (_,choices) = splitAt (max 0 (i - 1)) xs
        mkChoices x = map (:[n]) $ take x choices

lsum :: [Int] -> [Int] -> [Int]
lsum xs ys = [sum $ maximum $ choice a i xs | (i,a) <- zip [0..] ys]

main = do
  contents <- readFile "triangle.txt"
  let triangle = map ((map read) . words) $ lines contents
  print $ maximum $ foldl lsum (head triangle) (tail triangle)
