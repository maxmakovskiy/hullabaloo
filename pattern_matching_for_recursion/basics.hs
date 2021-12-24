module PMBasics where
-- Pattern Matching

-- Is list empty?
isEmpty [] = True
isEmpty _ = False

-- Return head of given list
-- Name agreement in Haskell: x - head of list, xs - all list
myHead (x:xs) = x
-- situation of empty list
myHead [] = error "Given list doesn't have a head"

-- Return tail of list
-- Use _ for value that doesn't interesting us
myTail [] = []
myTail (_:xs) = xs


