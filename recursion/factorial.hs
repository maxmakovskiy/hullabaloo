module MyFactorial where

-- Odinary factorial implemantation
factorial n = if n == 0 then 1 else n * factorial (n - 1)

-- Factorial by patern matching
factorial1 0 = 1
factorial1 n = n * factorial1 (n - 1)

-- error info 
factorial2 0 = 1
factorial2 n = if n < 0 then error "argument must be greather than 0" else n * factorial2 (n - 1)

-- Using guard expressions
factorial3 0 = 1
factorial3 n | n < 0 = error "arg must be >= 0"
             | n > 0 = n * factorial3 (n - 1)

-- Guard expresssions and otherwise (const from standart lib)
factorial4 :: Integer -> Integer
factorial4 n | n == 0 = 1
             | n > 0 = n * factorial4 (n - 1)
             | otherwise = error "arg must be >= 0"







