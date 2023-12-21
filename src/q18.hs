slice :: [a] -> Int -> Int -> [a]
slice xs s e | s > 0 = take (e - s + 1) $ drop (s - 1) xs

slice' :: [a] -> Int -> Int -> [a]
slice' [] _ _ = []
slice' (x : xs) s e
  | s > 1 = slice' xs (s - 1) (e - 1)
  | e < 1 = []
  | otherwise = x : slice' xs (s - 1) (e - 1)