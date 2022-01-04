module Example3 where

data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

type FirstName = String
type LastName = String
type MiddleName = String
data Name = Name FirstName LastName
          | NameWithMiddle FirstName MiddleName LastName

data Sex = Male | Female

data Patient = Patient { name      :: Name
                       , sex       :: Sex
                       , age       :: Int
                       , height    :: Int
                       , weight    :: Int
                       , bloodType :: BloodType }
-- Using:
-- patient1 = Patient { name = Name "Jon" "Snow",
--                      age = 41,
--                      sex = Male,
--                      height = 170,
--                      weight = 70,
--                      bloodType = BloodType 0 Neg }

-- Getters are automatically created
-- Example:
-- height patient1 -- return 170

