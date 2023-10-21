import Data.List qualified (group)

compress :: (Eq a) => [a] -> [a]
compress = foldr go []
  where
    go e [] = [e]
    go e acc@(x : _)
      | e == x = acc
      | otherwise = e : acc

compress' :: (Eq a) => [a] -> [a]
compress' = map head . Data.List.group

compress'' :: (Eq a) => [a] -> [a]
compress'' (x : xs@(y : _))
  | x == y = compress'' xs
  | otherwise = x : compress'' xs
compress'' xs = xs