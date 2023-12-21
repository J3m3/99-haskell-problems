dropEvery :: [a] -> Int -> [a]
dropEvery = flip dropEvery'

dropEvery' :: Int -> [a] -> [a]
dropEvery' c _ | c < 0 = undefined
dropEvery' 0 xs = xs
dropEvery' c (x : xs) = dropEvery' (c - 1) xs