import Data.List qualified (group)

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = reverse $ go (0, head xs) [] xs
  where
    go :: (Eq a) => (Int, a) -> [(Int, a)] -> [a] -> [(Int, a)]
    go acc whole [] = acc : whole
    go acc whole (x : xs)
      | snd acc == x = go (fst acc + 1, x) whole xs
      | otherwise = go (1, x) (acc : whole) xs

encode' :: (Eq a) => [a] -> [(Int, a)]
encode' xs = [(length x, head x) | x <- Data.List.group xs]