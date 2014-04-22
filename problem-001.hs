import Data.List (nub)

main = print . sum . nub $ (takeWhile (<1000) [3,6..] ++
                            takeWhile (<1000) [5,10..])
