module OwnSumSquresOperator where

-- declaration
-- syntax infix(l/r) [priority] [operator_declaration] defines priority 
-- and associative of side [l/r]
infixl 6 *+*

-- definition
a *+* b = a ^ 2 + b ^ 2
-- another form - function like
-- (*+*) a b = a ^ 2 + b ^ 2

infixl 6 |-|
a |-| b = if (a-b) < 0 then -(a-b) else (a-b)

