data Encoded = Single Char | Multiple Int Char

decodeModified :: [Encoded] -> String
decodeModified = concatMap f
  where
    f (Multiple len c) = replicate len c
    f (Single c) = [c]
