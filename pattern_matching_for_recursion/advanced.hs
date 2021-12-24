module RecAdv where

mytake _ [] = []
mytake 0 _ = []
mytake n (x:xs) = x : mytake (n-1) xs

mydrop 0 xs = xs
mydrop n (_:xs) =  mydrop (n-1) xs

mylength [] = 0
mylength xs = 1 + mylength (tail xs)

mylength2 [] = 0
mylength2 (_:xs) = 1 + mylength2 xs

mycycle (x:xs) = x : mycycle (xs ++ [x])

