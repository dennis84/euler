import Data.List (sort, elemIndex)
import Data.Char (toLower)
import Data.Maybe (fromJust)

cscore :: Char -> Int
cscore c = (fromJust $ elemIndex (toLower c) ['a'..'z']) + 1

nscore :: [Char] -> Int
nscore ns = sum $ map cscore ns

readNames :: String -> IO [[Char]]
readNames f = readFile f >>= \ns -> return . read $ "[" ++ ns ++ "]"

main = readNames "names.txt"
   >>= print . foldl (\s (i,n) -> s + i * nscore n) 0 . zip [1..] . sort
