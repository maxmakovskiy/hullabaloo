module LearnHighOrderFunc where

-- 1. map func list
-- Apply func to every element in list
-- map revers ["abc", "def", "ghi"]
-- return ["cba","fed","ihg"]
-- map (\x -> x ++ "!") ["abc", "def", "ghi"]
-- return ["abc!","def!","ghi!"]

-- 2. Do it without map
addBang [] = []
addBang (x:xs) = (x ++ "!") : addBang xs

-- 3. Create own map
map' f [] = []
map' f (x:xs) = (f x) : map' f xs
-- map' (++"?") ["axa", "vcx"]
-- return ["axa?","vcx?"]

-- 4. filter func list
-- Similar to map, but func must be return True or False
-- filter even [1..30]
-- return [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30]
-- filter (\x -> ((2*x + 1) `mod` 2) > 0) [1..30]
-- return [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]

-- 5. Create own filter
filter' comp [] = []
filter' comp (x:xs) = if comp x
    then x : filter' comp xs
    else filter' comp xs
-- filter' even [2..10]
-- return [2,4,6,8,10]

-- 6. Task: create remove' - skip elements that was aplied by comp function
remove' comp [] = []
remove' comp (x:xs) = if comp x
    then remove' comp xs
    else x : remove' comp xs
-- remove' even [1..10]
-- return [1,3,5,7,9]

-- 7. foldl
-- foldl (+) 0 [1..10]
-- return 55
-- Concat all strings in list using foldl
concatAll xs = foldl (++) "" xs
-- concatAll ["cba","fed","ihg"]
-- return "cbafedihg"
accumMult xs = foldl (*) 1 xs
-- accumMult [1..10]
-- 3628800

-- 8. foldl with other high order functions
sumOfSquares xs = foldl (+) 0 (map (\x-> x^2) xs)
-- sumOfSquares [1..10]
-- return 385
-- Reverse via foldl
rcons xs y = y:xs
reversef xs = foldl rcons [] xs
-- reversef [1,2,3,4,5]
-- return [5,4,3,2,1]

-- 9. Create own foldl
foldl' func init [] = init
foldl' func init (x:xs) = foldl' func newInit xs
    where newInit = func init x
-- foldl' (+) 0 [1..10]
-- return 55

-- 10. foldl - from left to right
--     foltr - from right to left
foldr' func init [] = init
foldr' func init (x:xs) = func x rightResult
    where rightResult = foldr' func init xs
-- foldr' (-) 10 [1..10]
-- return 5
-- foldl' (-) 10 [1..10]
-- return -45

