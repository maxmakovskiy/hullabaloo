module DoubleFactorial where

isEven n = if n `mod` 2 == 0 then True else False

evenFact n = if n == 2 then 2 else n * evenFact (n - 2)
oddFact n = if n == 1 then 1 else n * oddFact (n - 2)

doubleFact :: Integer -> Integer
doubleFact n = if isEven n then evenFact n else oddFact n

