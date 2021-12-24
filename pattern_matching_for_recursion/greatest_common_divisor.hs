module MyGCD where

my_gcd a b = if remainder == 0
        then b
        else my_gcd b remainder
    where remainder = a `mod` b

pm_gcd a 0 = a
pm_gcd a b = pm_gcd b (a `mod` b)
