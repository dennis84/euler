binomial n k = foldl (*) 1 [(n-x) / (x+1) | x <- [0..k-1]]

main = print $ binomial 40 20
