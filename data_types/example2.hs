module Example2 where

type FirstName = String
type LastName = String
type MiddleName = String

-- 'Name' and 'NameWithMiddle' are names of contructors
data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName

showName :: Name -> String
showName (Name fname lname) = fname ++ " " ++ lname
showName (NameWithMiddle fname mname lname) = fname ++ 
        " " ++ mname ++ " " ++ lname

-- Using:
-- name1 = Name "Jon" "Snow"
-- name2 = NameWithMiddle "Jerom" "David" "Selinger"
-- showName name1 -- returns "Jon Snow"
-- showName name2 -- returns "Jerom David Selinger"


