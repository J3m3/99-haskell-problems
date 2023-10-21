import Data.List qualified (group)

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack xs = reverse $ go [] [] xs
  where
    go _ whole [] = whole
    go [] whole (x : xs) = go [x] whole xs
    go acc whole (x : xs)
      | head acc == x = go (x : acc) whole xs
      | otherwise = go [x] (acc : whole) xs

pack' :: (Eq a) => [a] -> [[a]]
pack' = Data.List.group

pack'' :: (Eq a) => [a] -> [[a]]
pack'' [] = []
pack'' (x : xs) =
  let (eqs, diffs) = span (== x) xs
   in (x : eqs) : pack'' xs