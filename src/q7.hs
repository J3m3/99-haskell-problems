data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (List []) = []
flatten (Elem x) = [x]
flatten (List xs) = foldr go [] xs
  where
    go (Elem e) acc = e : acc
    go l acc = flatten l

flatten' :: NestedList a -> [a]
flatten' (Elem x) = [x]
flatten' (List xs) = concatMap flatten' xs