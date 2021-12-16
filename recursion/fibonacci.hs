module MyFibonacci where

fibonacci n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)

fibAux n res prev
    | n == 0 = res
    | otherwise = fibAux (n-1) (res+prev) res

fibonacciOpt n
    | n == 0 = 0
    | otherwise = fibAux n 1 0

