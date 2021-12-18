module UsersSort where

import Data.List

-- Sample data
names = [("Adams", "Baker"),
        ("Irwin", "Jones"),
        ("Ghosh", "Hills"),
        ("Mason", "Nalty"),
        ("Evans", "Frank"),
        ("Ochoa", "Patel"),
        ("Klein", "Lopez"),
        ("Clark", "Davis"),
        ("Quinn", "Reily")]

-- Create function that will be taked to List.sortBy
compareBySecondName pair1 pair2 = if compare lname2 lname1 == EQ
    then compare fname2 fname1
    else compare lname2 lname1
    where lname1 = snd pair1
          lname2 = snd pair2
          fname1 = fst pair1
          fname2 = fst pair1

{-- 
compareBySecondName pair1 pair2 = if lname1 > lname2
    then GT
    else
        if lname1 < lname2
        then LT
        else 
            if fname1 > fname1
            then GT
            else
                if fname1 < fname2
                then LT
                else EQ
    where lname1 = snd pair1
          lname2 = snd pair2
          fname1 = fst pair1
          fname2 = fst pair1
--}
    
