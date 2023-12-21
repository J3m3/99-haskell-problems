split :: [a] -> Int -> ([a], [a])
split xs c = split' xs c []

split' :: [a] -> Int -> [a] -> ([a], [a])
split' xs 0 acc = (reverse acc, xs)
split' (x : xs) c acc = split' xs (c - 1) (x : acc)