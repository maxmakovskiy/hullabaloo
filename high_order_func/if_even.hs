module IfEven where

-- This example may named as 'General computation template'

-- Prelude.even
ifEven func x = if even x
                then func x
                else x
inc x = x + 1
double x = x * 2
square x = x ^ 2
cube x = x ^ 3

ifEvenInc x = ifEven inc x 
ifEvenDouble x = ifEven double x 
ifEvenSquare x = ifEven square x 
ifEvenCube x = ifEven cube x
ifEvenNegate x = ifEven negate x -- negate from Prelude
