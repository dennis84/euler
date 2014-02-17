formula :: Int -> Int -> Int -> Bool
formula a b x = a^2 + b^2 == (1000 - a - b)^2

main =
  print $ head $ concat $ [[ a * b * (1000 - a - b)
    | a <- [1..1000], formula a b 1000]
    | b <- [1..1000]]
