import Data.Char (digitToInt)

main = print $ sum $ map digitToInt $ show $ product [100,99..1]
