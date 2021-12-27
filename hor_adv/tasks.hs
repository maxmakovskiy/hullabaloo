module HorTasks where

import Data.Char

-- Create own elem
elem2 target xs = length (filter (\x -> x == target) xs) > 0

-- Palindrome for sentance 'Step on no pets'
isPalindrome sentance = processed == reverse processed
    where processed = map toLower $ filter isAlpha sentance

-- Compute sum of harmonic sequances that has n elements
harmonic n = sum $ take n values
    -- create infinite list of pair (1/1, 1/2, ..)
    where harmSeries = zip (cycle [1.0]) [1.0, 2.0 ..] 
          -- take n elements from infinite list
          -- and make division numertor / denominator
          -- map creates new list of result for evry pair
          values = map (\x -> (fst x) / (snd x)) harmSeries


