myLength :: [a] -> Int
myLength = foldr (const $ (+) 1) 0

myLength' :: [a] -> Int
myLength' [] = 0
myLength' (x : xs) = myLength xs + 1

myLength'' :: [a] -> Int
myLength'' = foldl (const . (+ 1)) 0