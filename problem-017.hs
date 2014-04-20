import Data.Char (digitToInt)
import Data.Maybe (fromJust)

dict = [(0,    "zero")
      , (1,    "one")
      , (2,    "two")
      , (3,    "three")
      , (4,    "four")
      , (5,    "five")
      , (6,    "six")
      , (7,    "seven")
      , (8,    "eight")
      , (9,    "nine")
      , (10,   "ten")
      , (11,   "eleven")
      , (12,   "twelve")
      , (13,   "thirteen")
      , (14,   "fourteen")
      , (15,   "fifteen")
      , (16,   "sixteen")
      , (17,   "seventeen")
      , (18,   "eighteen")
      , (19,   "nineteen")
      , (20,   "twenty")
      , (30,   "thirty")
      , (40,   "forty")
      , (50,   "fifty")
      , (60,   "sixty")
      , (70,   "seventy")
      , (80,   "eighty")
      , (90,   "ninety")
      , (100,  "hundred")
      , (1000, "thousand")]

nhead :: Int -> Int
nhead n = digitToInt $ head $ show n 

nzeros :: Int -> Int
nzeros n = (div n zs * zs)
  where zs = ozeros n

ozeros :: Int -> Int
ozeros n = 10 ^ ((length $ show n) - 1)

ntail :: Int -> Int
ntail n = read (tail $ show n) :: Int

inwords :: Int -> [Char]
inwords n
    | n < 1     = ""
    | n < 20    = lu n
    | n < 100   = lu (nzeros n) ++ (inwords $ ntail n)
    | otherwise =
      let tail' = inwords $ ntail n
          conj  = if length tail' > 0 then "and" else ""
      in lu (nhead n) ++ lu (ozeros n) ++ conj ++ (inwords $ ntail n)
  where lu n = fromJust $ lookup n dict

main = print $ length $ concat $ [inwords x | x <- [1..1000]]
