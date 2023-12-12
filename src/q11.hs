import Data.List (group)

data Encoded = Single Char | Multiple Int Char deriving (Show)

encodeModified :: String -> [Encoded]
encodeModified =
  map
    ( \xs ->
        let len = length xs
         in if len == 1
              then Single (head xs)
              else Multiple len (head xs)
    )
    . group