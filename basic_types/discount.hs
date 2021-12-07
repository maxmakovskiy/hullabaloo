module DiscountCalc where

discount :: Double -> Double -> Double -> Double
discount limit proc sum = if sum >= limit then sum * (100 - proc) / 100 else sum


standardDiscount :: Double -> Double
standardDiscount x = discount 1000 5 x

