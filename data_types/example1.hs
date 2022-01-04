module Example1 where

data RhType = Pos | Neg
data ABOType = A | B | AB | O
data BloodType = BloodType ABOType RhType

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

canDonate :: BloodType -> BloodType -> Bool
canDonate (BloodType O _) _ = True
canDonate _ (BloodType AB _) = True
canDonate (BloodType A _) (BloodType A _) = True
canDonate (BloodType B _) (BloodType B _) = True
canDonate _ _ = False

patient1BT :: BloodType
patient1BT = BloodType A Pos

patient2BT :: BloodType
patient2BT = BloodType O Neg


