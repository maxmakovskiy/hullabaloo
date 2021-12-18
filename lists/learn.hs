module LearnList where

-- 1.Create list
nums = [1, 2, 3, 4, 5]
nums2 = [[1, 2], [2, 3], [3, 3], [4, 1]]
-- String is syntax sugar
-- String is list of chars
message = "Hello world"
message2 = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'r', 'l', 'd']
1:[] -- create list [1]
1:2:3:4:[] -- create list [1, 2, 3, 4]
(1,2):(2,3):(3,3):[] -- create list [(1,2), (2,3), (3,3)]

-- 2.Access to elements
head nums -- return 1
tail nums -- return [2, 3, 4, 5]

-- 3.Lazy evaluations
range1 = [1 .. 10] -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
range2 = [1, 3 .. 10] -- [1, 3, 5, 7, 9]
range3 = [1, 1.5 .. 3] -- [1.0, 1.5, 2.0, 2.5, 3.0]
range4 = [1, 0 .. -5] -- [1, 0, -1, -2, -3, -4, -5]
-- Eternity list
range5 = [1..] -- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ..

-- 4.Functions with lists
-- !! - get element by index
num1 = [1, 2, 3] !! 0 -- return 1
num2 = "hello world string" !! 4 -- return 'o'
-- length 
length [1..20] -- return 20
length [(10, 20), (1, 2), (3, 3), (44, 1231)] -- return 4
length "hello" -- return 5
-- reverse
reverse [1, 2, 3] -- return [3, 2, 1]
-- elem - check if list has given element
elem 3 [0..10] -- return True
-- take - return list of first's n elements from given list
take 5 [0..10] -- return [0,1,2,3,4]
take 100000 [0..10] -- return [0,1,2,3,4,5,6,7,8,9,10] without throwing error
-- drop - skip n elements and return remainder
drop 2 [1,3..10] -- return [5,7,9]
-- zip - combine elements from two given lists and return list of pairs
zip [1,2,3] [2,1,3] -- return [(1,2),(2,1),(3,3)]
zip [1,2] [2,3,1,3,1,3,2,3] -- return [(1,2),(2,3)] without error
-- cycle - infinite repetition of the original list
take 4 (cycle [1]) -- return [1,1,1,1]






