module LambdaLike where

doubleDouble x = (\y -> y * 2) (x)

counter x = (\x ->
                (\x -> x + 1) x) (x+1)

