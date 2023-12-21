repli :: (Foldable t) => t b -> Int -> [b]
repli xs c = concatMap (replicate c) xs

repli' :: [a] -> Int -> [a]
repli' xs c = foldr (\x acc -> acc ++ localRepl x c) [] xs
  where
    localRepl _ 0 = []
    localRepl x c = x : localRepl x (c - 1)