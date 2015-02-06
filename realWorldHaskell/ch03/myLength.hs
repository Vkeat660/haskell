-- Exercise 1 - Chapter 3
myLength :: [a] -> Integer

myLength []     = 0
myLength (_:xs) = 1 + myLength xs

myLength2 = sum . map (const 1)
