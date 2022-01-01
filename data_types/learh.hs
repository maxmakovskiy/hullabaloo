-- Data types
-- 1. Bounded - Int
x :: Int
x = 2
-- 2. Integer
y :: Integer
y = 2
-- 3. Char
letter :: Char
letter = 'a'
-- 4. Double
rate :: Double
rate = 0.375
-- 5. Bool
isFun :: Bool
isFun = True
-- 6. Type List
values :: [Int]
value = [1,2,3]
scores :: [Double]
scores = [0.88, 0.7, 0.77]
-- 7. String = [Char]
letters :: [Char]
letters = ['h', 'e', 'l', 'l', 'o']
letters2 :: String
letters2 = "hello"
letters == letters2 -- returns True
-- 8. Type Tuple
widthAndHeight :: (Int, Int)
widthAndHeight = (132, 86)
address :: (String, Int)
address = ("Happy Street", 123)

-- 9. Functions and data types
multBy2 :: Int -> Int
multBy2 n = n * 2
divBy2 :: Int -> Double
-- fromIntegral converts n from Int to Double
divBy2 n = (fromIntegral n) / 2 
divBy2' :: Integer -> Integer
divBy2' n = n `div` 2

-- 10. 'To string' and 'from string' cast
show 6 -- returns "6"
show 'c' -- returns "'c'"
show 8.0 -- returns "8.0"
printDouble :: Int -> String
printDouble n = show (n * 2)
number' :: Int
number' = read "7"
read "87" :: Int -- returns 87
read "87" :: Double -- returns 87.0

-- 11. Several arguments functions
makeAddr :: Int -> String -> String -> (Int, String, String)
makeAddr num street town = (num, street, town)

-- 12. High order function type
ifEven :: (Int -> Int) -> Int -> Int
ifEven func n = if func n
    then func n
    else n

-- 13. Variable of type
-- a - is any type
simple :: a -> a
simple x = x
-- a, b, c - different types
makeTriple :: a -> b -> c -> (a, b, c)
makeTriple x y z = (x, y, z)




