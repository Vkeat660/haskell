data Direction = LeftTurn
	       | RightTurn
	       | Straight
		 deriving (Eq, Show)

data Point = Point {
	pX :: Double,
	pY :: Double
	} deriving (Eq, Show)

data Vector = Vector {
	vX :: Double,
	vY :: Double
	} deriving (Eq, Show)

cross :: Vector -> Vector -> Double
cross a b = (vX a * vY b) - (vX b * vY a)

pointsToVector :: Point -> Point -> Vector 
pointsToVector a b = Vector (pX b - pX a) (pY b - pY a)

crossP :: Point -> Point -> Point -> Double
crossP a b c = cross (pointsToVector a b) (pointsToVector b c)

pointsToDirection :: Point -> Point -> Point -> Direction
pointsToDirection a b c
	 |  x > 0 = LeftTurn
         |  x < 0 = RightTurn
         |  otherwise = Straight
         where x = crossP a b c
