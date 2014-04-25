fibs = 0:1:zipWith (+) fibs (tail fibs)

main = print . fst . last $
  takeWhile (\(i,n) -> (length $ show n) < 1000) $ zip [1..] fibs
