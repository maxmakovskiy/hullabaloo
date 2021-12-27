module MyTasks where

-- reverse list

reverse' [] = [] -- empty list
reverse' (x:[]) = [x] -- one element in list
reverse' (x:xs) = (reverse' xs) ++ [x] -- general case



