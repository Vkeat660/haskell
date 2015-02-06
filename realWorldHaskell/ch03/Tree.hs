-- file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
	    | Empty
	      deriving (Show)

height :: Tree a -> Integer
height Empty = 0
height (Node node left right) = 1 + max (height left) (height right)


