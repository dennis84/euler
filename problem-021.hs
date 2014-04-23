import Control.Monad (guard)

d :: Int -> [Int]
d n = [x | x <- [1..(n-1)], n `rem` x == 0]

main = print . sum $ do
  n <- [1..9999]
  let a = sum $ d n
  let b = sum $ d a
  guard(a /= b)
  guard(n == b)
  return n
