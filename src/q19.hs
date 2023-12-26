rotate :: (Eq t, Num t) => [a] -> t -> [a]
rotate [] _ = []
rotate xs 0 = xs
rotate (x : xs) c = rotate (xs ++ [x]) (c - 1)