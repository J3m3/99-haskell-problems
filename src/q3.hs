elementAt :: [a] -> Int -> a
elementAt xs i = xs !! (i - 1)

elementAt' :: [a] -> Int -> a
elementAt' (x : _) 0 = x
elementAt' (_ : xs) i = elementAt' xs (i - 1)
elementAt' _ _ = error "Index out of bounds"

elementAt'' :: [a] -> Int -> a
elementAt'' = flip go
  where
    inc = (1 +)
    go = (last .) . take . inc