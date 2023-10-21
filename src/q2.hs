myButLast :: [a] -> a
myButLast [] = undefined
myButLast [x, _] = x
myButLast (x : xs) = myButLast xs

myButLast' :: [a] -> a
myButLast' = last . init