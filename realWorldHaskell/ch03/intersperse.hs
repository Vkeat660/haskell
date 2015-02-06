intersperse :: a -> [[a]] -> [a]
intersperse _         []  = []
intersperse _      (x:[]) = x
intersperse joiner (x:xs) = x ++ joiner : intersperse joiner xs
