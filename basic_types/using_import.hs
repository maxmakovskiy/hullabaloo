module UsingImport where

import Data.Char

-- works only for 10 =< x < 100 numbers
-- if both characters is digits then return number else return 100
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if ((isDigit x) && (isDigit y)) then digitToInt x * 10 + digitToInt y else 100


