-- 1. Synonym
-- String is synonym to [Char]
-- Create own synonymns
-- Before:
takeInfo :: String -> String -> Int -> String
takeInfo fname lname age = "Name: " ++
    fname ++ " " ++ lname ++ "; Age: " ++ show age ++ "."
-- After:
type FirstName = String
type LastName = String
type Age = Int
takeInfo :: FirstName -> LastName -> Age -> String
-- Or maybe this:
type Name = (String, String)
takeInfo :: Name -> Age -> String

firstName :: Name -> String
firstName name = fst name

lastName :: Name -> String
lastName name = snd name

-- 2. Create new data type
data Sex = Male | Female
-- Where 'Sex' is constructor of type
-- 'Male' and 'Female' are consturctors of data
data Bool = True | False
-- Using:
sexInitial :: Sex -> Char
sexInitial Male = 'M'
sexInitial Female = 'F'

-- Examples:
-- example1.hs
-- example2.hs
-- example3.hs 



