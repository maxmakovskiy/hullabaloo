module IntrMath where

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m-1) 1
ackermann m n = ackermann (m-1) (ackermann m (n-1))

collatz 1 = 1
collatz n = if even n 
    then 1 + collatz (n `div` 2)
    else 1 + collatz (n*3 + 1)

