module MyFactorial where

-- Odinary factorial implemantation
factorial n = if n == 0 then 1 else n * factorial (n - 1)

-- Factorial by patern matching
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)


