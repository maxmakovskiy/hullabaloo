module IfEven where

ifEven func x = if even x
                then func x
                else x
inc x = x + 1
double x = x * 2
square x = x ^ 2
cube x = x ^ 3

-- return lambda function
generateIfEven func = (\x -> ifEven func x)

ifEvenInc x = (generateIfEven inc) (x)

