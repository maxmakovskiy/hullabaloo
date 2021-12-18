module ListTasks where

isPalindrome word = word == reverse word

takeLastN n list = reverse (take n (reverse list))

createOnes n = take n $ cycle [1]

assignToGroups n list = zip groups list
    where groups = cycle [1..n]

repeat_ val = cycle (val:[])

subseq begin end list = take diff (drop begin list)
    where diff = end - begin

inFirstHalf itm list = elem itm firstHalf
    where firstHalf = take (div (length list) 2) list



