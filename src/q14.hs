dupli :: [a] -> [a]
dupli = concatMap (replicate 2)

dupli' :: [a] -> [a]
dupli' [] = []
dupli' (x : xs) = x : x : dupli' xs