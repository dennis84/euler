import Data.Time (fromGregorian)
import Data.Time.Calendar.WeekDate (toWeekDate)

isSunday day = d == 7
  where (_,_,d) = toWeekDate day

main = print $ length $ filter isSunday $
  [fromGregorian y m 1 | m <- [1..12], y <- [1901..2000]]
