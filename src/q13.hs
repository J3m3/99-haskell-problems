import Data.List (group)

data Encoded = Single Char | Multiple Int Char deriving (Show)

encodeDirect :: (Eq a) => [a] -> [(Int, a)]
encodeDirect = foldr helper []
  where
    helper c [] = [(1, c)]
    helper c (y@(prevLen, prevC) : ys)
      | c == prevC = (1 + prevLen, c) : ys
      | otherwise = (1, c) : y : ys