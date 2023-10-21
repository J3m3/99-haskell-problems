myLast :: [a] -> a
myLast [] = undefined
myLast [x] = x
myLast (x : xs) = myLast xs

myLast' :: [a] -> a
myLast' xs = foldr const (head xs) xs

myLast'' :: [a] -> a
myLast'' xs = foldl (\_ e -> e) (head xs) xs