isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = reverse xs == xs

isPalindrome' :: (Eq a) => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [_] = True
isPalindrome' (x : xs) = x == last xs && isPalindrome' (init xs)