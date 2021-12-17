module IfEven where

-- General computation template

-- Prelude.even
ifEven func x = if even x
                then func x
                else x
inc x = x + 1
double x = x * 2
square x = x ^ 2

ifEvenInc x = ifEven inc x 
ifEvenDouble x = ifEven double x 
ifEvenSquare x = ifEven square x 


