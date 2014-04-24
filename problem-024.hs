import Data.List (permutations, sort)

fromDigits :: [Int] -> Int
fromDigits = read . concatMap show

main = print . fromDigits $ (sort $ permutations [0..9]) !! 999999
